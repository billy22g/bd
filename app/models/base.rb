class Base < ActiveRecord::Base
  #relationships
  belongs_to :branch

  #validations
  validates :name, presence: true

  validates :state, presence: true, format: {with: /[A-Z]{2}/},
            length: { is: 2 }
  validates :zipcode, presence: true, format: {with: /[0-9]{5}/},
            length: { is: 5 }

  validates_numericality_of :zipcode

  validates :latitude, presence: true
  validates_numericality_of :latitude
  validates :longitude, presence: true
  validates_numericality_of :longitude

  validates :branch_id, presence: true
  
end
