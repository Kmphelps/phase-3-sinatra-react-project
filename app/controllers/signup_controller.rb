class SignupController < Sinatra::Base
    
    get "/signups" do
      Signup.all.to_json
    end

    get "/signup/:id" do
        Signup.find(params[:id]).to_json
    end
  end