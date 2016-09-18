class User < ApplicationRecord
  has_many :clients
  has_many :projects
  has_many :tasks

  validates :email, presence: true, uniqueness: true, format: /\S+@\S+\.\S+/
  validates :name,  presence: true
end
