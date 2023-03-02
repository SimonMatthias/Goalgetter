class Quarterlygoal < ApplicationRecord
  belongs_to :yearlygoal
  has_many :weeklytodos, dependent: :destroy
  delegate :user_id, to: :yearlygoal
end
