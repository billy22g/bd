class Website < ActiveRecord::Base
  #relationships
  belongs_to :establishment

  #validations
  validates :url, presence: true
  validates :description, presence: true
  validates :establishment_id, presence: true
end
