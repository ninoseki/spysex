require "spyse/version"

require "spyse/clients/base"

require "spyse/clients/as"
require "spyse/clients/cert"
require "spyse/clients/cve"
require "spyse/clients/domain"
require "spyse/clients/ip"

require "spyse/api"

module Spyse
  class Error < StandardError; end
end
