require_dependency 'spree/calculator'

module Spree
  module Calculator::Shipping
    module CanadaPost
      class Base < Spree::Calculator::Shipping::ActiveShipping::Base
        def carrier

          if (!Spree::ActiveShipping::Config[:canada_post_login].blank?)
            puts "using CPCID"
            canada_post_options = {
                :login => Spree::ActiveShipping::Config[:canada_post_login],
                :french => (I18n.locale.to_sym == :fr)
            }
            carrier = ActiveMerchant::Shipping::CanadaPost.new(canada_post_options)
          else
            if (!Spree::ActiveShipping::Config[:canada_post_api_key].blank?)
              puts "using PWS"
              canada_post_options = {
                  :api_key => Spree::ActiveShipping::Config[:canada_post_api_key],
                  :secret => Spree::ActiveShipping::Config[:canada_post_secret],
                  :endpoint => Spree::ActiveShipping::Config[:test_mode] ?
                      'https://ct.soa-gw.canadapost.ca/' : nil,
                  :customer_number => Spree::ActiveShipping::Config[:canada_post_customer_number],
                  :language => I18n.locale.to_sym
              }
              carrier = ActiveMerchant::Shipping::CanadaPostPWS.new(canada_post_options)
            end
          end

          carrier
        end
      end
    end
  end
end
