class Signup < ActiveRecord::Base
    belongs_to :opportunity
    belongs_to :volunteer
end