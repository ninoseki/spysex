# frozen_string_literal: true

module Spyse
  module Client
    class CVE < Base
      #
      # Lists CVE
      #
      # @see https://spyse.com/api#/cve/cve
      #
      # @return [Hash]
      #
      def get(cve_id, limit: nil, offset: nil)
        params = {
          cve_id: cve_id, limit: limit, offset: offset,
        }.compact
        _get("/cve", params) { |json| json }
      end

      #
      # Lists IPs, that vulnerable by provided CVE
      #
      # @see https://spyse.com/api#/cve/vulnerable_ip_by_cve
      #
      # @return [Hash]
      #
      def vulnerable_ip(cve, limit: nil, offset: nil)
        params = {
          cve: cve, limit: limit, offset: offset,
        }.compact
        _get("/cve/vulnerable-ip", params) { |json| json }
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
