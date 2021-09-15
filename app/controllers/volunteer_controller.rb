class VolunteerController < Sinatra::Base
    
    get "/volunteers" do
      Volunteer.all.to_json
    end

    get "/volunteer/:id" do
        Volunteer.find(params[:id]).to_json
    end
  end