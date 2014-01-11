class Category < ActiveRecord::Base
  #relationships
  has_many :establishment_categories
  has_many :establishments, through: :establishment_categories
  
  #validations
  validates :name, presence: true

end
