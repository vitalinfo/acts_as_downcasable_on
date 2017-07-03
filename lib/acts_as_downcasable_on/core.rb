module ActsAsDowncasableOn
  module Core
    def acts_as_downcasable_on(*attributes)
      before_validation do
        attributes.each do |attribute|
          send(attribute).downcase! if send(attribute).present? && send(attribute).respond_to?(:downcase!)
        end
      end
    end
  end
end
