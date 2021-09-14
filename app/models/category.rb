class Category < ActiveRecord::Base
    has_many :opportunities
    has_many :volunteers, through: :opportunities

    def create_opportunity(title, date, time, location, description, maxvolunteers)
        Opportunity.create(title: title, date: date, time: time, location: location, description: description, maxvolunteers: maxvolunteers, category_id: self.id)
    end
end