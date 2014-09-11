module Spree
  module Calculator::Shipping
    module CanadaPostPWS
      class Xpresspost < Spree::Calculator::Shipping::CanadaPostPWS::Base
        def self.description
          I18n.t("canada_post_pws.xpresspost")
        end
      end
    end
  end
end
