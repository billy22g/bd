class AddVisibleColumnToEstablishments < ActiveRecord::Migration
  def change
    add_column :establishments, :visible, :boolean, default: true
  end
end
