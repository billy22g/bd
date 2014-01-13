class AddEstablishmentIdToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :establishment_id, :integer
  end

end
