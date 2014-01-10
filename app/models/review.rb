class Review < ActiveRecord::Base
  #relationships
  belongs_to :user
  belongs_to :establishment

  #validations
  validates :user_id, presence: true
end
