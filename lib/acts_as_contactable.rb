require 'acts_as_contactable/engine'

module ActsAsContactable
  def self.included(base)
    base.class_eval do
      has_many :addressess, class_name: 'ActsAsContactable::Address',
                            as: :addressable,
                            dependent: :destroy
    end
  end
end
