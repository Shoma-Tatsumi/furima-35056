class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :password, format: { with: /(?=.*[a-z])(?=.*\d)[a-z\d]/i, message: 'Include both letters and numbers.' }

  with_options presence: true do
    validates :nickname
    validates :first_name, format: { with: /\A[ぁ-んァ-ヶ一-龥々 ー]+ \z/, message: 'Full-width characters.' }
    validates :last_name, format: { with: /\A[ぁ-んァ-ヶ一-龥々 ー]+ \z/, message: 'Full-width characters.' }
    validates :first_name_reading, format: { with: /\A[ァ-ヶー]+ \z/, message: 'Full-width katakana characters.' }
    validates :last_name_reading, format: { with: /\A[ァ-ヶー]+ \z/, message: 'Full-width katakana characters.' }
    validates :birthday
  end
end
