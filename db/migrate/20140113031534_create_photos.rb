class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :filename
      t.string :content_type
      t.integer :file_size
      t.timestamps
    end
  end
end
