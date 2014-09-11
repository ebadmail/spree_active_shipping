module Spree
  module Calculator::Shipping
    module CanadaPostPWS
      class PriorityWorldwideIntl < Spree::Calculator::Shipping::CanadaPostPWS::Base
        def self.description
          I18n.t("canada_post.priority_worldwide_intl")
        end
      end
    end
  end
end

