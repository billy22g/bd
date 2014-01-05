class Branch < ActiveRecord::Base
  has_many :bases

  validates :name, presence: true
  validates_inclusion_of :name, :in => ["Army", "Navy", "Air Force", "Marines", 
                                        "Coast Guard", "USO", "Recreation Travel", "Space-A"]

end
