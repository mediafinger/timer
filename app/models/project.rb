class Project < ApplicationRecord
  belongs_to :client
  belongs_to :user
  has_many :tasks, dependent: :destroy

  validates :name, presence: true
  validates :status, presence: true, inclusion: { in: %w(preparation active on_hold done billed) }
end
