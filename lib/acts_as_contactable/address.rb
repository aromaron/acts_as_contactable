# frozen_string_literal: true

module ActsAsContactable
  class Address < ActiveRecord::Base
    belongs_to :addressable, polymorphic: true
  end
end
