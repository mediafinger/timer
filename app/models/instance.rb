class Instance < ApplicationRecord
  belongs_to :project, dependent: :destroy
end
