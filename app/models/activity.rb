class Activity < ApplicationRecord
    has_many :parks
    has_many :reviews

    validates_presence_of :name, :accessible?, :description

    scope :accessible?, { where(accessible?: true) }
end
