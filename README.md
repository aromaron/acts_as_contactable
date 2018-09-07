# Acts As Contactable
Acts As Contactable is a Ruby Gem specifically written for Rails/ActiveRecord models that adds certain (opinionated) contact information (address, phone numbers)

## Installation

### Supported Ruby and Rails versions

* Ruby 2.2.0, 2.3.0 and 2.4.0
* Rails 4.0, 4.1+
* Rails 5.0, 5.1

### Install

```ruby
gem 'acts-as-contactable'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install acts-as-contactable
```

### Data Migrations
Acts As Contactable uses an Addresses table to store information. To generate and run the migration use.

```
rails generate acts_as_contactable:migration
rake db:migrate
```

## Usage

### Contactable models

```ruby
class User < ActiveRecord::Base
  acts_as_contactable
end
```

## Testing

All tests follow the RSpec format and are located in the spec directory.
They can be run with:

```
rake spec
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
