class CreateEstablishments < ActiveRecord::Migration
  def change
    create_table :establishments do |t|
      t.string :name
      t.integer :category_id
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.integer :zipcode
      t.integer :latitude
      t.integer :longitude
      t.text :description
      t.timestamps
    end
  end
end
