module Spree
  module Calculator::Shipping
    module CanadaPostPWS
      class SmallPacketsAir < Spree::Calculator::Shipping::CanadaPostPWS::Base
        def self.description
          I18n.t("canada_post_pws.small_packets_air")
        end
      end
    end
  end
end
