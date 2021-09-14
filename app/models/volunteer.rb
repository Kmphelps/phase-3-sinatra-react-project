class Volunteer < ActiveRecord::Base
    has_many :opportunities
    has_many :categories, through: :opportunities

    def print_volunteer
        "Volunteer: #{name}"
    end
end