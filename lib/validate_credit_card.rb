require 'active_model'

module ActiveModel
  module Validations
    class CreditCardValidator < ActiveModel::EachValidator
      def validate_each(object, attribute, value)
        unless luhn_valid?(value)
          object.errors[attribute] << (options[:message] || "is invalid")  
        end
      end

      def luhn_valid?(card_number)
        digits = card_number.to_s.gsub(/D/, '').each_char.map(&:to_i).reverse
        flip = true

        digits.sum {|n| (flip ^= true) ? (n*2).divmod(10).sum() : n } % 10 == 0
      end
    end
    module ClassMethods
      def validates_credit_card(*attr_names)
        validates_with CreditCardValidator, _merge_attributes(attr_names)
      end
    end
  end
end
