module Spree
  module Calculator::Shipping
    module CanadaPostPWS
      class Expedited < Spree::Calculator::Shipping::CanadaPostPWS::Base
        def self.description
          I18n.t("canada_post_pws.expedited")
        end
      end
   end
  end
end
