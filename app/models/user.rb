class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :favorites
    has_many :favorite_books, through: :favorites, source: :book

    has_secure_password

    # Validaciones
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 8 }

    # Métodos personalizados
    def admin?
        role == 'admin'
    end

end
