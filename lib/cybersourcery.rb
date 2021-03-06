require 'cybersourcery/version'
require 'cybersourcery/configuration'
require 'cybersourcery/exceptions'

if defined? Rails
  require 'cybersourcery/merchant_data_serializer'
  require 'cybersourcery/profile'
  require 'cybersourcery/payment'
  require 'cybersourcery/railtie'
  require 'cybersourcery/cybersource_signer'
  require 'cybersourcery/cart_signer'
  require 'cybersourcery/signature_checker'
  require 'cybersourcery/cart_signature_checker'
  require 'cybersourcery/cybersource_signature_checker'
  require 'cybersourcery/reason_code_checker'
  require 'cybersourcery/container'
  require 'cybersourcery/cybersource_params_normalizer'
end

module Cybersourcery
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
