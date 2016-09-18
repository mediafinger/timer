class Client < ApplicationRecord
  belongs_to :user, dependent: :destroy

  validates :name, presence: true
  validates :user, presence: true
end
