class User < ApplicationRecord
  has_many :clients,  dependent: :destroy
  has_many :projects, dependent: :destroy
  has_many :tasks,    dependent: :destroy

  validates :email, presence: true, uniqueness: true, format: /\S+@\S+\.\S+/
  validates :name,  presence: true
end
