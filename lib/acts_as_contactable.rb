# frozen_string_literal: true

require 'acts_as_contactable/engine'
require 'active_support/inflector'

$LOAD_PATH.unshift(File.dirname(__FILE__))

module ActsAsContactable
  if defined?(ActiveRecord::Base)
    require 'acts_as_contactable/extenders/contactable'
    require 'acts_as_contactable/address'
    ActiveRecord::Base.extend ActsAsContactable::Extenders::Contactable
  end
end
