class PhoneNumber < ActiveRecord::Base
  #relationships
  belongs_to :establishment

  #validations
  validates :number, presence: true
  validates :establishment_id, presence: true
end
