module Spree
  module Calculator::Shipping
    module CanadaPostPws
      class ParcelSurface < Spree::Calculator::Shipping::CanadaPostPws::Base
        def self.description
          I18n.t("canada_post_pws.parcel_surface");
        end
      end
    end
  end
end
