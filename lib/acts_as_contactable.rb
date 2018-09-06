require "acts_as_contactable/engine"

module ActsAsContactable
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_contactable
      class_eval do
        has_many :addresses, as: :addressable
      end
    end
  end
end
