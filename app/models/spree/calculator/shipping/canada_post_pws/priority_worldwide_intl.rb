module Spree
  module Calculator::Shipping
    module CanadaPostPws
      class PriorityWorldwideIntl < Spree::Calculator::Shipping::CanadaPostPws::Base
        def self.description
          I18n.t("canada_post_pws.priority_worldwide_intl")
        end
      end
    end
  end
end

