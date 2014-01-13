class Photo < ActiveRecord::Base
  #relationships
  belongs_to :establishment

  #validations
  validates :filename, presence: true
  validates :content_type, presence: true
  validates :file_size, presence: true
  validates :establishment_id, presence: true

  validates_numericality_of(:file_size)
  validates_numericality_of(:establishment_id)
end
