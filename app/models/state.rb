class State < ApplicationRecord
    has_many :cities
    has_many :parks

    validates_presence_of :name, :abbreviation
    validates :abbreviation, length: { is: 2 }
end
