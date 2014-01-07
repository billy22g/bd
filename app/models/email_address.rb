class EmailAddress < ActiveRecord::Base
  #relationships
  belongs_to :establishment

  #validations
  validates :email, presence: true
  validates :description, presence: true
  validates :establishment_id, presence: true
end
