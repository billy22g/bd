class AddDefaultValueOfWebsiteToWebsites < ActiveRecord::Migration
  def change
    change_column :websites, :description, :string, :default => "Website"
  end
end
