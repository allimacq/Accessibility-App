class Activity < ApplicationRecord
    has_many :reviews
    has_many :parks, through: :reviews

    validates_presence_of :name

    #scope :accessible, { where(accessible: true) }
end
