class OpportunityController < Sinatra::Base
    
    get "/opportunities" do
      Opportunity.all.to_json
    end

    get "/opportunity/:id" do
        Opportunity.find(params[:id]).to_json
    end
  end