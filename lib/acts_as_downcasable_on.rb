require 'active_record'
require 'acts_as_downcasable_on/version'
require 'acts_as_downcasable_on/core'

module ActsAsDowncasableOn
  include ActsAsDowncasableOn::Core
end

# Extend ActiveRecord's functionality
ActiveRecord::Base.send :extend, ActsAsDowncasableOn
