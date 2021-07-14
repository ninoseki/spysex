# frozen_string_literal: true

module Spyse
  module Client
    class AS < Base
      #
      # Lists AS
      #
      # @see https://spyse.com/api#/as/as
      #
      # @return [Hash]
      #
      def get(asn)
        _get("/as/#{asn}") { |json| json }
      end

      #
      # Lists ASs
      #
      # @see https://spyse.com/api#/as/as_search
      #
      # @return [Hash]
      #
      def search(search_params, limit: nil, offset: nil)
        params = {
          search_params: search_params, limit: limit, offset: offset,
        }.compact
        _post("/as/search", params) { |json| json }
      end
    end
  end
end
