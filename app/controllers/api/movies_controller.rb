class Api::MoviesController < ApplicationController

    def index
        render json: Movie.all
    end

    def show
        render json: Movie.find(params[:id])
    end

    # def new
    # end

    # def create
    # end

    # def edit
    # end

    # def update
    # end

    # def delete
    # end

end
