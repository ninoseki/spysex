# frozen_string_literal: true

module Spyse
  module Client
    class Cert < Base
      #
      # Lists Certificate
      #
      # @see https://spyse.com/api#/certificate/certificate
      #
      # @return [Hash]
      #
      def get(hash, limit: nil, offset: nil)
        params = {
          hash: hash, limit: limit, offset: offset,
        }.compact
        _get("/cert", params) { |json| json }
      end

      #
      # Lists certificates
      #
      # @see https://spyse.com/api#/certificate/cert_search
      #
      # @return [Hash]
      #
      def search(search_params, limit: nil, offset: nil)
        params = {
          search_params: search_params, limit: limit, offset: offset,
        }.compact
        _post("/cert/search", params) { |json| json }
      end
    end
  end
end
