# frozen_string_literal: true

module ActsAsDowncasableOn
  module Core
    def acts_as_downcasable_on(*attributes)
      before_validation do
        attributes.each do |attribute|
          next if send(attribute).blank? || !send(attribute).respond_to?(:downcase)
          assign_attributes(attribute => send(attribute).downcase)
        end
      end
    end
  end
end
