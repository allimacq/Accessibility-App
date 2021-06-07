class Review < ApplicationRecord
    belongs_to :user
    belongs_to :activity
    belongs_to :park

    validates_presence_of :review, :rating
    validates :rating, length: { in: 1..5 }, numericality: { only_integer: true }

    scope :rating, -> (amount) { where ("star > ?", amount) }
end
