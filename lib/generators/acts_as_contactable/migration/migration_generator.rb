# frozen_string_literal: true

require 'rails/generators/migration'

module ActsAsContactable
  class MigrationGenerator < Rails::Generators::Base
    include Rails::Generators::Migration

    desc 'Generates migration for contactable (address table)'

    def self.orm
      Rails::Generators.options[:rails][:orm]
    end

    def self.source_root
      File.join(File.dirname(__FILE__), 'templates', (orm.to_s unless orm.class.eql?(String)))
    end

    def self.orm_has_migration?
      [:active_record].include? orm
    end

    def self.next_migration_number(_path)
      Time.now.utc.strftime('%Y%m%d%H%M%S')
    end

    def create_migration_file
      if self.class.orm_has_migration?
        migration_template 'address_migration.erb', 'db/migrate/acts_as_contactable_address_migration.rb', migration_version: migration_version
      end
    end

    private

    def migration_version
      '[4.2]' if rails5?
    end

    def rails5?
      Rails.version.start_with? '5'
    end
  end
end
