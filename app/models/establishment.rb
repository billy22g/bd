class Establishment < ActiveRecord::Base
  #relationships
  has_many :phone_numbers 
  
  #validations
end
