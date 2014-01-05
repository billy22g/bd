class AddIndexOnBranchIdToBases < ActiveRecord::Migration
  def change
    add_index :bases, :branch_id
  end
end
