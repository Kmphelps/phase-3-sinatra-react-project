class SignupController < Sinatra::Base
  set :default_content_type, 'application/json'

    get "/signups" do
      Signup.all.to_json
    end

    get "/signup/:id" do
        Signup.find(params[:id]).to_json
    end

    post "/signups" do
      Signup.create(volunteer_id:params[:volunteer_id], opportunity_id:params[:opportunity_id]).to_json
    end
  end