class AddDefaultValueOfPhoneToPhoneNumbers < ActiveRecord::Migration
  def change
    change_column :phone_numbers, :description, :string, :default => "Phone"
  end
end
