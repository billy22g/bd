class AddDefaultValueOfEmailToEmailAddresses < ActiveRecord::Migration
  def change
    change_column :email_addresses, :description, :string, :default => "Email"
  end
end
