class CreateEstablishmentCategories < ActiveRecord::Migration
  def change
    create_table :establishment_categories do |t|
      t.integer :establishment_id
      t.integer :category_id
      t.timestamps
    end

    add_index :establishment_categories, :establishment_id
    add_index :establishment_categories, :category_id
  end
end
