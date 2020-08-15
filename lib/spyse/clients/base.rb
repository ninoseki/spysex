# frozen_string_literal: true

require "json"
require "net/https"
require "uri"

module Spyse
  module Client
    class Base
      HOST = "api.spyse.com"
      VERSION = "v3"
      BASE_URL = "https://#{HOST}/#{VERSION}/data"

      def initialize(api_key)
        @api_key = api_key
      end

      private

      def url_for(path)
        URI(BASE_URL + path)
      end

      def https_options
        if proxy = ENV["HTTPS_PROXY"] || ENV["https_proxy"]
          uri = URI(proxy)
          {
            proxy_address: uri.hostname,
            proxy_port: uri.port,
            proxy_from_env: false,
            use_ssl: true
          }
        else
          { use_ssl: true }
        end
      end

      def request(req)
        Net::HTTP.start(HOST, 443, https_options) do |http|
          req["Authorization"] = "Bearer #{@api_key}"

          response = http.request(req)

          code = response.code.to_i
          body = response.body
          json = JSON.parse(body)

          case code
          when 200
            yield json
          else
            error = json.dig("error", "message") || body
            raise Error, "Unsupported response code returned: #{code} - #{error}"
          end
        end
      end

      def _get(path, params = {}, &block)
        uri = url_for(path)
        uri.query = URI.encode_www_form(params)
        get = Net::HTTP::Get.new(uri)

        request(get, &block)
      end

      def _post(path, params = {}, &block)
        post = Net::HTTP::Post.new(url_for(path))
        post.body = JSON.generate(params)
        post["Content-Type"] = "application/json"

        request(post, &block)
      end
    end
  end
end
