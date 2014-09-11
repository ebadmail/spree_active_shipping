require_dependency 'spree/calculator'

module Spree
  module Calculator::Shipping
    module CanadaPostPws
      ActiveMerchant::Shipping::CanadaPostPWS.class_eval do
        cattr_reader :name
      end

      class Base < Spree::Calculator::Shipping::ActiveShipping::Base
        def carrier
          canada_post_options = {
              :api_key => Spree::ActiveShipping::Config[:canada_post_api_key],
              :secret => Spree::ActiveShipping::Config[:canada_post_secret],
              :endpoint => Spree::ActiveShipping::Config[:test_mode] ?
                  'https://ct.soa-gw.canadapost.ca/' : nil,
              :customer_number => Spree::ActiveShipping::Config[:canada_post_customer_number],
              :language => I18n.locale.to_sym
          }
          ActiveMerchant::Shipping::CanadaPostPWS.new(canada_post_options)
        end
      end
    end
  end
end

