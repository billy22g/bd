class Base < ActiveRecord::Base
  #relationships
  belongs_to :branch
  has_many :users
  has_many :base_establishments
  has_many :establishments, through: :base_establishments

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

  validates :latitude , numericality: { greater_than: -90, less_than: 90 }
  validates :longitude, numericality: { greater_than: -180, less_than: 180 }

  validates :branch_id, presence: true

  def to_param
    "#{name.downcase}"
  end
  
end
