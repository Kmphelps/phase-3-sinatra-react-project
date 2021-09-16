 require_relative "./opportunity_controller"
 require_relative "./volunteer_controller"
 require_relative "./signup_controller"

 class ApplicationController < Sinatra::Base
  use OpportunityController
  use VolunteerController
  

  set :default_content_type, 'application/json'
  
  get "/" do
    { message: "Placeholder!" }.to_json
  end

end
