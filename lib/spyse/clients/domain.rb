# frozen_string_literal: true

module Spyse
  module Client
    class Domain < Base
      #
      # Lists domains
      #
      # @see https://spyse.com/api#/domain/domain
      #
      # @param [String] name The domain name.
      #
      # @return [Hash]
      #
      def get(name)
        _get("/domain/#{name}") { |json| json }
      end

      #
      # Lists domains
      #
      # @see https://spyse.com/api#/domain/domain_search
      #
      # @return [Hash]
      #
      def search(search_params, limit: nil, offset: nil)
        params = {
          search_params: search_params, limit: limit, offset: offset,
        }.compact
        _post("/domain/search", params) { |json| json }
      end
    end
  end
end
