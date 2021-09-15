class Opportunity < ActiveRecord::Base
    has_many :volunteers
    has_many :signups, through: :volunteers
end