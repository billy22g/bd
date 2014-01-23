class EstablishmentCategory < ActiveRecord::Base
  #relationships
  belongs_to :category
  belongs_to :establishment

  #validations
  validates :category_id, presence: true
  validates :establishment_id, presence: true
end
