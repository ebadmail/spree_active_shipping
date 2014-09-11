module Spree
  module Calculator::Shipping
    module CanadaPostPWS
      class SmallPacketsSurface < Spree::Calculator::Shipping::CanadaPostPWS::Base
        def self.description
          I18n.t("canada_post.small_packets_surface")
        end
      end
    end
  end
end
