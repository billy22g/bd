class EmailAddress < ActiveRecord::Base
  #relationships
  belongs_to :establishment

  #validations
  validates :email, presence: true
  validates :description, presence: true
  validates :establishment_id, presence: true

  # TODO: This email validation from email_validator gem doesn't validate extensions (.xy passes)
  # validates :email, :email => true
end
