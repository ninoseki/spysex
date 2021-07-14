# frozen_string_literal: true

module Spyse
  module Client
    class IP < Base
      #
      # Returns the current data about the given IP address.
      #
      # @see https://spyse.com/api#/ip/ip
      #
      # @param [String] ip A valid IPv4 address.
      #
      # @return [Hash]
      #
      def get(ip)
        _get("/ip/#{ip}") { |json| json }
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
