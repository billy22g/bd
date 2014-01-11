class CreateBaseEstablishments < ActiveRecord::Migration
  def change
    create_table :base_establishments do |t|
      t.integer :base_id
      t.integer :establishment_id
      t.timestamps
    end

    add_index :base_establishments, :base_id
    add_index :base_establishments, :establishment_id
  end
end
