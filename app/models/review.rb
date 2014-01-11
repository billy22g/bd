class Review < ActiveRecord::Base
  #relationships
  belongs_to :user
  belongs_to :establishment

  #validations
  validates :user_id, presence: true
  validates :establishment_id, presence: true

  validates :rating, presence: true
  validates_numericality_of :rating
  validates_inclusion_of :rating, in: 1..5

  validates :text, length: { maximum: 500 }
end
