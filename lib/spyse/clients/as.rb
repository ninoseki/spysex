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
      def get(asn, limit: nil, offset: nil)
        params = {
          asn: asn, limit: limit, offset: offset,
        }.compact
        _get("/as", params) { |json| json }
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
