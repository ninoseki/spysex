# frozen_string_literal: true

module Spyse
  module Client
    class IP < Base
      #
      # Lists ips
      #
      # @see https://spyse.com/api#/ip/ip
      #
      # @return [Hash]
      #
      def get(ip, limit: nil, offset: nil, as_org: nil, country: nil, as_num: nil)
        params = {
          limit: limit,
          offset: offset,
          ip: ip,
          as_org: as_org,
          country: country,
          as_num: as_num
        }.compact
        _get("/ip", params) { |json| json }
      end

      #
      # Lists IPs
      #
      # @see https://spyse.com/api#/ip/ip_search
      #
      # @return [Hash]
      #
      def search(search_params, limit: nil, offset: nil)
        params = {
          search_params: search_params, limit: limit, offset: offset,
        }.compact
        _post("/ip/search", params) { |json| json }
      end
    end
  end
end
