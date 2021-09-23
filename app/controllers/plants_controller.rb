class PlantsController < ApplicationController
    def index
        plants = Plant.all
        render json: plants, except: [:created_at, :updated_at]
    end

    def show
        plants = Plant.find_by(id: params[:id])
        render json: plants, except: [:created_at, :updated_at]
    end

    def create
        plants = Plant.create!(name: params[:name], image: params[:image], price: params[:price])
        render json: plants, except: [:created_at, :updated_at], status: 201
    end
  

   

end
