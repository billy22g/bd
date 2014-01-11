class BaseEstablishment < ActiveRecord::Base
  #relationships
  belongs_to :base 
  belongs_to :establishment

  #validations
  validates :base_id, presence: true
  validates :establishment_id, presence: true
  validates_numericality_of :base_id
  validates_numericality_of :establishment_id
end
