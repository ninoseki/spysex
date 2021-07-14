# frozen_string_literal: true

module Spyse
  module Client
    class CVE < Base
      #
      # Lists CVE
      #
      # @see https://spyse.com/api#/cve/cve
      #
      # @param [String] cve_id MITRE CVE unique identifier.
      #
      # @return [Hash]
      #
      def get(cve_id)
        _get("/cve/#{cve_id}") { |json| json }
      end

      #
      # Lists CVEs
      #
      # @see https://spyse.com/api#/cve/cve_search
      #
      # @return [Hash]
      #
      def search(search_params, limit: nil, offset: nil)
        params = {
          search_params: search_params, limit: limit, offset: offset,
        }.compact
        _post("/cve/search", params) { |json| json }
      end
    end
  end
end
