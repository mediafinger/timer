class Task < ApplicationRecord
  belongs_to :project
  belongs_to :user
  has_many :instances, dependent: :destroy

  validates :name, presence: true
  validates :status, presence: true, inclusion: { in: %w(preparation active on_hold done billed) }
end
