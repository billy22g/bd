class IndexPhotosOnEstablishmentId < ActiveRecord::Migration
  def change
    add_index :photos, :establishment_id
  end
end
