class Review < ApplicationRecord
    belongs_to :user
    belongs_to :activity
    belongs_to :park

    validates_presence_of :review, :rating
    validates_inclusion_of :rating, in: 1..5

    #scope :rating, -> (amount) { where ("star > ?" , amount) }

    def display_accessibility(user, activity, park)
        if self.accessible == true
            "#{user.make_name} Found #{activity.name} at #{park.name} To Be Accessible"
        else
            "#{user.make_name} Found #{activity.name} at #{park.name} To Not Be Accessible"
        end
    end

    def stars
        if self.rating == 1
            "#{self.rating} Star"
        else
            "#{self.rating} Stars"
        end
    end


end
