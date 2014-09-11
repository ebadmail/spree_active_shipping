module Spree
  module Calculator::Shipping
    module CanadaPostPWS
      class ParcelSurface < Spree::Calculator::Shipping::CanadaPostPWS::Base
        def self.description
          I18n.t("canada_post.parcel_surface");
        end
      end
    end
  end
end
