# ActsAsDowncasableOn 

Easy way to define AR attributes that should be stored in lowercase

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'acts_as_downcasable_on'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install acts_as_downcasable_on
    
## Usage

Setup

```ruby
class User < ActiveRecord::Base
  acts_as_downcasable_on :email, :login
end
```

Attributes `email` and `login` will be forced to lowercase before model validation.

## Contributing
1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request
