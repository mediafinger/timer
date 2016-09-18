class User < ApplicationRecord
  has_many :clients

  validates :email, presence: true, uniqueness: true, format: /\S+@\S+\.\S+/
  validates :name,  presence: true
end
