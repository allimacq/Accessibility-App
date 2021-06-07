class Activity < ApplicationRecord
    has_many :reviews
    has_many :parks, through: :reviews
    belongs_to :user

    validates_presence_of :name, :accessible, :description

    #scope :accessible, { where(accessible: true) }
end
