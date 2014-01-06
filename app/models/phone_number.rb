class PhoneNumber < ActiveRecord::Base
  #relationships
  

  #validations
  validates :number, presence: true
end
