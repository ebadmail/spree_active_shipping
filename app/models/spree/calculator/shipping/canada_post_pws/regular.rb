module Spree
  module Calculator::Shipping
    module CanadaPostPWS
      class Regular < Spree::Calculator::Shipping::CanadaPostPWS::Base
        def self.description
          I18n.t("canada_post_pws.regular")
        end
      end
    end
  end
end
