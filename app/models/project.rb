class Project < ApplicationRecord
  belongs_to :client
  belongs_to :user, dependent: :destroy

  validates :name, presence: true
  validates :status, presence: true, in: [:preparation, :active, :on_hold, :done, :billed]
end
