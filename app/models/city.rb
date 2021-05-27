class City < ApplicationRecord
    has_many :parks
    has_many :activities, through: :parks
    belongs_to :state
end
