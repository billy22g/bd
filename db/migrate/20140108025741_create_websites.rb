class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :url
      t.integer :establishment_id
      t.string :description
      t.timestamps
    end
  end
end
