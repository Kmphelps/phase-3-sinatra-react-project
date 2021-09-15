 require_relative "./opportunity_controller"

class ApplicationController < Sinatra::Base
  use OpportunityController

  set :default_content_type, 'application/json'
  

  get "/" do
    { message: "Placeholder!" }.to_json
  end

end
