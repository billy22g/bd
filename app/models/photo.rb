class Photo < ActiveRecord::Base
  #relationships
  belongs_to :establishment
  belongs_to :user

  #validations
  validates :filename, presence: true
  validates :content_type, presence: true
  validates :file_size, presence: true
  validates :establishment_id, presence: true
  validates :user_id, presence: true
  validates :status, presence: true
  validates_inclusion_of :status, :in => ["pending", "active"]

  validates_numericality_of(:user_id)
  validates_numericality_of(:file_size)
  validates_numericality_of(:establishment_id)

  def approve
    self.status = "active"
  end

  def take_offline
    self.status = "pending"
  end

  def delete_for_good
    self.destroy
  end
end
