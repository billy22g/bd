class CreateEmailAddresses < ActiveRecord::Migration
  def change
    create_table :email_addresses do |t|
      t.string :number
      t.integer :establishment_id
      t.string :description
      t.timestamps
    end
  end
end
