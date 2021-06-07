class City < ApplicationRecord
    serialize :zipcode
    has_many :parks
    has_many :activities, through: :parks
    belongs_to :state

    validates_presence_of :name, :zipcode, :state
    #validates :zipcode, length: { is: 5 }, numericality: { only_integer: true }
end
