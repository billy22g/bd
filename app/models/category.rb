class Category < ActiveRecord::Base
  #relationships

  
  #validations
  validates :name, presence: true
  
end
