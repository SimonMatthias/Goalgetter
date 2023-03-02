class Yearlygoal < ApplicationRecord
  belongs_to :fiveyeargoal
  has_many :quarterlygoals, dependent: :destroy
  delegate :user_id, to: :fiveyeargoal
end
