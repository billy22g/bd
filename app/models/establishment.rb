class Establishment < ActiveRecord::Base
  #relationships
  has_many :phone_numbers 
  has_many :email_addresses
  has_many :websites
  has_many :reviews
  has_many :base_establishments
  has_many :bases, through: :base_establishments
  has_many :establishment_categories
  has_many :categories, through: :establishment_categories
  
  #validations
  validates :name, presence: true
  validates :category_id, presence: true
  validates_numericality_of :category_id

  validates :state, format: {with: /[A-Z]{2}/}, length: { is: 2 }
end
