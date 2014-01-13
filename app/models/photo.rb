class Photo < ActiveRecord::Base
  #relationships
  belongs_to :establishment
  
  #validations
end
