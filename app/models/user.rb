class User < ActiveRecord::Base
  #relationships
  belongs_to :base
  has_many :reviews
  has_many :photos

  #validations
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true
end
