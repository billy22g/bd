class AddDescriptionToPhoneNumbers < ActiveRecord::Migration
  def change
    add_column :phone_numbers, :description, :string
  end
end
