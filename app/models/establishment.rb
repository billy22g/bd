class Establishment < ActiveRecord::Base
  #relationships
  has_many :phone_numbers 
  has_many :email_addresses
  
  #validations
  validates :name, presence: true
  validates :category_id, presence: true

  validates :state, format: {with: /[A-Z]{2}/}, length: { is: 2 }
end
