class Category < ActiveRecord::Base
  #relationships
  has_many :establishment_categories
  has_many :establishments, through: :establishment_categories

  #TODO 
  #Set up base_categories relationships
  
  #validations
  validates :name, presence: true

end
