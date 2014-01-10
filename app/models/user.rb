class User < ActiveRecord::Base
  #relationships
  belongs_to :base

  #validations
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true
end
