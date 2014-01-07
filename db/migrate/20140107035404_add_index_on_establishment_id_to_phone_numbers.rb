class AddIndexOnEstablishmentIdToPhoneNumbers < ActiveRecord::Migration
  def change
    add_index :phone_numbers, :establishment_id
  end
end
