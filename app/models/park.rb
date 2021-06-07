class Park < ApplicationRecord
    has_many :reviews
    has_many :activities, through: :reviews
    belongs_to :city
    belongs_to :state
    belongs_to :user

    validates :name, presence: true, uniqueness: true
end
