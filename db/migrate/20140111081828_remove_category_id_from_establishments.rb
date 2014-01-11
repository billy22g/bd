class RemoveCategoryIdFromEstablishments < ActiveRecord::Migration
  def change
    remove_column :establishments, :category_id
  end
end
