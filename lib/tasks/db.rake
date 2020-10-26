# frozen_string_literal: true

namespace :db do
  desc 'Clean all datas from my tables'
  task clean_all: :environment do
    ActiveRecord::Base.connection.tables.each do |table|
      next if /action_text_rich_texts/.match?(table)
      next if /ar_internal_metadata/.match?(table)
      next if /schema_migrations/.match?(table)

      ActiveRecord::Migration.execute("DELETE FROM #{table}")
    end
  end

  desc 'Count rows per table'
  task count: :environment do
    ActiveRecord::Base.connection.tables.each do |table|
      next if /action_text_rich_texts/.match?(table)
      next if /active_storage_attachments/.match?(table)
      next if /active_storage_blobs/.match?(table)
      next if /ar_internal_metadata/.match?(table)
      next if /schema_migrations/.match?(table)

      rows = table.singularize.camelize.constantize
      puts "#{rows.name} has #{rows.count} records"
    end
  end
end
