# frozen_string_literal: true

###
# CreateInstruments Class
#
class CreateInstruments < ActiveRecord::Migration[6.0]
  def change
    create_table :instruments do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
