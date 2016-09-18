class Client < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :projects

  validates :name, presence: true
  validates :user, presence: true
end
