class Opportunity < ActiveRecord::Base
    has_many :volunteers
    belongs_to :category
    
    def print_all_volunteers
        puts self.volunteers.map(&:print_volunteer)
    end
end