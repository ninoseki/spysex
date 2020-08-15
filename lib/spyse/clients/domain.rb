# frozen_string_literal: true

module Spyse
  module Client
    class Domain < Base
      #
      # Lists domains
      #
      # @see https://spyse.com/api#/domain/domain
      #
      # @return [Hash]
      #
      def get(name, limit: nil, offset: nil, cert: nil, using_as_mx: nil, using_as_ns: nil, is_mx: nil, is_ns: nil, ip: nil )
        params = {
          limit: limit, offset: offset, name: name, cert: cert, using_as_mx: using_as_mx, using_as_ns: using_as_ns, is_mx: is_mx, is_ns: is_ns, ip: ip
        }.compact
        _get("/domain", params) { |json| json }
      end

      #
      # Lists subdomains of a domain
      #
      # @see https://spyse.com/api#/domain/subdomain
      #
      # @return [Hash]
      #
      def subdomain(domain, limit: nil, offset: nil)
        params = {
          domain: domain,
          limit: limit,
          offset: offset
        }.compact
        _get("/domain/subdomain", params) { |json| json }
      end

      #
      # Lists of related domains
      #
      # @see https://spyse.com/api#/related/domain_related_domain
      #
      # @return [Hash]
      #
      def related_domains(domain, limit: nil, offset: nil)
        params = {
          domain: domain,
          limit: limit,
          offset: offset
        }.compact
        _get("/domain/related/domain", params) { |json| json }
      end

      #
      # Lists of related IPs by domain
      #
      # @see https://spyse.com/api#/related/domain_related_ip
      #
      # @return [Hash]
      #
      def related_ips(domain, limit: nil, offset: nil)
        params = {
          domain: domain,
          limit: limit,
          offset: offset
        }.compact
        _get("/domain/related/ip", params) { |json| json }
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
