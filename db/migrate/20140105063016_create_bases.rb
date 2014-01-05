class CreateBases < ActiveRecord::Migration
  def change
    create_table :bases do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.integer :zipcode
      t.integer :latitude
      t.integer :longitude
      t.string :url
      t.string :image
      t.integer :branch_id
      t.timestamps
    end
  end
end
