class BirdsController < ApplicationController
    def index
        birds = Bird.all
        render json: birds
    end

    def show 
        bird = Bird.find(params[:id])
        if bird
            render json: bird
        else
            render json: {error: '404 bird not found'}, status: :not_found
        end
    end
end
