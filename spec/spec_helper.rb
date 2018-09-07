# frozen_string_literal: true

$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "lib")
require 'rails/engine'
require 'active_record'
require "acts_as_contactable"
require "sqlite3"
require "simplecov"
require "factory_bot"

Dir["./spec/shared_example/**/*.rb"].sort.each { |f| require f }
Dir["./spec/support/**/*.rb"].sort.each { |f| require f }

SimpleCov.start

ActiveRecord::Base.establish_connection(adapter: "sqlite3", database: ":memory:")

ActiveRecord::Schema.define(version: 1) do
  create_table :addresses do |t|
    t.references :addressable, polymorphic: true

    t.string :name
    t.string :street
    t.string :street2
    t.string :city
    t.string :state
    t.string :zip
    t.boolean :primary

    t.timestamps
  end

  add_index :addresses, [:addressable_id, :addressable_type]

  create_table :addressables do |t|
    t.string :name
  end
end

class Contactable < ActiveRecord::Base
  acts_as_contactable
  validates_presence_of :name
end

class NotContactable < ActiveRecord::Base
end