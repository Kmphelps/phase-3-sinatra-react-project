 require_relative "./opportunity_controller"
 require_relative "./volunteer_controller"
 require_relative "./category_controller"

 class ApplicationController < Sinatra::Base
  use OpportunityController
  use VolunteerController
  use CategoryController

  set :default_content_type, 'application/json'
  
  get "/" do
    { message: "Placeholder!" }.to_json
  end

end
