class User < ActiveRecord::Base
  #relationships
  belongs_to :base

  #validations
  validates :username, presence: true
  validates :email, presence: true
end
