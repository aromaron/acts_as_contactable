# frozen_string_literal: true

module ActsAsContactable
  module Extenders
    module Contactable
      def contactable?
        false
      end

      def acts_as_contactable(_args = {})
        require "acts_as_contactable/contactable"
        include ActsAsContactable::Contactable

        define_method :acts_as_contactable_options do
          self.class.instance_variable_get("@acts_as_contactable_options")
        end

        class_eval do
          def self.contactable?
            true
          end
        end
      end
    end
  end
end
