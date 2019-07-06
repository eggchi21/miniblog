class Tweet < ApplicationRecord
    belongs_to :user
    enum kind: {benchipress: 0, deadlift: 1, squat:2}
end
