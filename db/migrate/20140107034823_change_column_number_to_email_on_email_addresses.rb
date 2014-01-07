class ChangeColumnNumberToEmailOnEmailAddresses < ActiveRecord::Migration
  def change
    rename_column :email_addresses, :number, :email
  end
end
