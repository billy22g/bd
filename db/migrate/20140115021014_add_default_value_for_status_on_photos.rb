class AddDefaultValueForStatusOnPhotos < ActiveRecord::Migration
  def change
    change_column :photos, :status, :string, :default => "pending"
  end
end
