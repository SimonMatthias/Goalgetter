class Weeklytodo < ApplicationRecord
  belongs_to :quarterlygoal
  delegate :user_id, to: :quarterlygoal
end
