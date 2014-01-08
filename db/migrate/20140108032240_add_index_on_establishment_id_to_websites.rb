class AddIndexOnEstablishmentIdToWebsites < ActiveRecord::Migration
  def change
    add_index :websites, :establishment_id
  end
end
