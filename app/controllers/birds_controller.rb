class BirdsController < ApplicationController
    def index
        render json: Bird.all
    end

    def show
        bird = Bird.find_by(id: params[:id])
        if bird
        render json: bird, status: :ok
        else 
            render json: {error: "Bird Not Found"}, status: :not_found
        end
    end
end
