class AddOperatorNumberToBases < ActiveRecord::Migration
  def change
    add_column :bases, :operator_number, :string
  end
end
