class User < ApplicationRecord

  has_many :favorites
  has_many :favorite_books, through: :favorites, source: :book

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:user, :admin]

  after_initialize :set_default_role, :if => :new_record?
  def set_default_role
    self.role ||= :user
  end

end
