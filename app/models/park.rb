class Park < ApplicationRecord
    has_many :activities
    has_many :reviews, through: :activities
    belongs_to :city
    belongs_to :state
    belongs_to :user

    validates :name, presence: true, uniqueness: true
end
