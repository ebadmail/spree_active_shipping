module Spree
  module Calculator::Shipping
    module CanadaPostPWS
      class XpresspostInternational < Spree::Calculator::Shipping::CanadaPostPWS::Base
        def self.description
          I18n.t("canada_post_pws.xpresspost_international")
        end
      end
    end
  end
end
