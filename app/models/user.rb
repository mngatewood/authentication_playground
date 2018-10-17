class User < ApplicationRecord

  validates_presence_of :name, :email, :password

  validates :name, :length => {within: 6..40}, presence: true

  validates :email, uniqueness: true, presence: true

  validates :password, :length => {within: 8..40}, presence: true

    # e.g., User.authenticate('penelope@turing.com', 'boom')
  def self.authenticate(email, password)
    user = User.find_by(email: email)
    if user.password == password
      return user
    else
      return nil
    end
    # if email and password correspond to a valid user, return that user
    # otherwise, return nil
  end

end