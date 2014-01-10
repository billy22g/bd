class AddIndexOnUserIdAndEstablishmentIdToReviews < ActiveRecord::Migration
  def change
    add_index :reviews, [:establishment_id, :user_id]
  end
end
