# frozen_string_literal: true

module ActsAsContactable
  module Contactable
    def self.included(base)
      base.class_eval do
        has_many :addresses, class_name: "ActsAsContactable::Address",
                              as: :addressable, dependent: :destroy
      end
    end
  end
end