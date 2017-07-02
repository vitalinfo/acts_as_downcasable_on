require 'sqlite3'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: ':memory:')

ActiveRecord::Schema.define(version: 1) do
  create_table :tests, force: true do |t|
    t.string   :value_downcasable_1
    t.string   :value_downcasable_2
    t.string   :value
  end
end

class Test < ActiveRecord::Base
  acts_as_downcasable_on :value_downcasable_1, :value_downcasable_2
end
