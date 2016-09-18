class Client < ApplicationRecord
  belongs_to :user
  has_many :projects

  validates :name, presence: true
  validates :user, presence: true
end
