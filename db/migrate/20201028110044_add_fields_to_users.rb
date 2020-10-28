# frozen_string_literal: true

###
# AddFieldsToUsers Class
#
class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    change_table :users, bulk: true do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :billing_name, null: false
      t.string :address
      t.string :zip_code
      t.string :city
      t.string :primary_phone_number
      t.string :secondary_phone_number
      t.string :emergency_contact_name
      t.string :emergency_phone_number
      t.string :emergency_email
      t.text   :notes
    end
  end
end
