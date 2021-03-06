class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.integer :base_id
      t.timestamps
    end

    add_index :users, :base_id
  end
end
