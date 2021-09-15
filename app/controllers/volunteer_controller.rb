class VolunteerController < Sinatra::Base
  set :default_content_type, 'application/json'  

    get "/volunteers" do
      Volunteer.all.to_json
    end

    get "/volunteer/:id" do
        Volunteer.find(params[:id]).to_json
    end

    post "/volunteers" do
      Volunteer.create(name:params[:name], phone:params[:phone]).to_json
    end
  end