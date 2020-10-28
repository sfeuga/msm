# frozen_string_literal: true

###
# AddSlugToInstruments Class
#
class AddSlugToInstruments < ActiveRecord::Migration[6.0]
  def change
    add_column :instruments, :slug, :string
    add_index :instruments, :slug, unique: true
  end
end
