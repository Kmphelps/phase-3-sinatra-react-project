class CategoryController < Sinatra::Base
    
    get "/categories" do
      Category.all.to_json
    end

    get "/category/:id" do
        Category.find(params[:id]).to_json
    end
  end