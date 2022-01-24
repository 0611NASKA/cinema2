class Member < ApplicationRecord
  has_secure_password
  has_many :reservations, dependent: :destroy
  attr_accessor :current_password

  validates :password, presence: { if: :current_password }

  validates :login_id, presence: true,
  uniqueness: { case_sensitive: false }

  validates :name, presence: true,
  format: { with: /[a-z\p{Ideographic}]/ }

  validates :tel, presence: true,
  format: { with: /\A[0-9()-]*\z/, allow_blank: true },
  length: { minimum:8, maximum: 20 }

  validates :birthday, date: { before: Date.today }

  validates :email, presence: true,
  email: { allow_blank: true }

  validates :payment, presence: true
end
