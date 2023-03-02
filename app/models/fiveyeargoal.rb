class Fiveyeargoal < ApplicationRecord
  belongs_to :user
  has_many :yearlygoals, dependent: :destroy
  delegate :user_id, to: :user
end
