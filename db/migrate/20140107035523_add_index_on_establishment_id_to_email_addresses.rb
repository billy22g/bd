class AddIndexOnEstablishmentIdToEmailAddresses < ActiveRecord::Migration
  def change
    add_index :email_addresses, :establishment_id
  end
end
