class Opportunity < ActiveRecord::Base
    belongs_to :volunteer
    belongs_to :category
    
    def print_all_volunteers
        puts self.volunteers.map(&:print_volunteer)
    end
end