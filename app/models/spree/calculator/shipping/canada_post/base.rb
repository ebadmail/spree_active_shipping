require_dependency 'spree/calculator'

module Spree
  module Calculator::Shipping
    module CanadaPost
      class Base < Spree::Calculator::Shipping::ActiveShipping::Base
        def carrier

          if (Spree::ActiveShipping::Config[:canada_post_login].present?)
            puts "using CPCID"
            canada_post_options = {
                :login => Spree::ActiveShipping::Config[:canada_post_login],
                :french => (I18n.locale.to_sym == :fr)
            }
            ActiveMerchant::Shipping::CanadaPost.new(canada_post_options)
          else
            if (Spree::ActiveShipping::Config[:canada_post_api_key].present?)
              puts "using PWS"
              canada_post_options = {
                  :api_key => Spree::ActiveShipping::Config[:canada_post_api_key],
                  :secret => Spree::ActiveShipping::Config[:canada_post_secret],
                  :french => (I18n.locale.to_sym == :fr)
              }
              ActiveMerchant::Shipping::CanadaPostPWS.new(canada_post_options)
            end
          end
        end
      end
    end
  end
end
