# frozen_string_literal: true

module Spyse
  module Client
    class Cert < Base
      #
      # Returns the current data about the given certificate.
      #
      # @param [String] hash The SHA256 fingerprint of the certificate.
      #
      # @return [Hash]
      #
      def get(hash)
        _get("/certificate/#{hash}") { |json| json }
      end

      #
      # Returns a list of certificates that matched the search query.
      #
      # @see https://spyse.com/api#/certificate/cert_search
      #
      # @return [Hash]
      #
      def search(search_params, limit: nil, offset: nil)
        params = {
          search_params: search_params, limit: limit, offset: offset,
        }.compact
        _post("/certificate/search", params) { |json| json }
      end
    end
  end
end
