class Activity < ApplicationRecord
    has_many :parks
    has_many :reviews
    belongs_to :user

    validates_presence_of :name, :accessible?, :description

    scope :accessible?, { where(accessible?: true) }
end
