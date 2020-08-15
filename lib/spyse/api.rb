# frozen_string_literal: true

module Spyse
  class API
    def initialize(api_key = ENV["SPYSE_API_KEY"])
      @api_key = api_key
      raise ArgumentError, "No api key has been found or provided!" unless @api_key
    end

    def as
      @as ||= Client::AS.new(@api_key)
    end

    def cert
      @cert ||= Client::Cert.new(@api_key)
    end

    def cve
      @cve ||= Client::CVE.new(@api_key)
    end

    def domain
      @domain ||= Client::Domain.new(@api_key)
    end

    def ip
      @ip ||= Client::IP.new(@api_key)
    end
  end
end
