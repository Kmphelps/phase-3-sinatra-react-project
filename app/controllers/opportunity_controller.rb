class OpportunityController < Sinatra::Base
  set :default_content_type, 'application/json'

    get "/opportunities" do
      Opportunity.all.to_json
    end

    get "/opportunity/:id" do
        Opportunity.find(params[:id]).to_json
    end

    post "/opportunities" do
      Opportunity.create(
        title: params[:title], 
        location: params[:location], 
        description: params[:description], 
        img: params[:img], 
        date: params[:date], 
        time: params[:time], 
        org_name: params[:org_name], 
        category: params[:category]).to_json
    end

    delete "/opportunity/:id" do
      opportunity = Opportunity.find(params[:id])
      opportunity.destroy
      opportunity.to_json
    end

    patch '/opportunity/:id' do
      opportunity = Opportunity.find(params[:id])
      opportunity.update(
        title: params[:title], 
        location: params[:location], 
        description: params[:description], 
        img: params[:img], 
        date: params[:date], 
        time: params[:time], 
        org_name: params[:org_name], 
        category: params[:category]
      )
      opportunity.to_json
    end
  end