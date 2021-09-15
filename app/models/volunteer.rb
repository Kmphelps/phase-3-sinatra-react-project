class Volunteer < ActiveRecord::Base
    has_many :opportunities
    has_many :signups, through: :opportunities
end