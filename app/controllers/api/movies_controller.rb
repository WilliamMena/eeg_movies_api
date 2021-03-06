class Api::MoviesController < ApplicationController

    def index
        render json: Movie.all
    end

    def show
        render json: Movie.find(params[:id])
    end

    def create
        movie = Movie.new(movie_params)
        # Doesn't accept actors names
        # byebug

        if movie.save
            render json: movie
        else
            render json: { message: movie.errors }, status: 400
        end
    end

    def update
        movie = Movie.find(params[:id])

        if movie.update(movie_params)
            render json: movie
          else
            render json: { message: movie.errors }, status: 400
          end
    end

    def destroy
        movie = Movie.find(params[:id])

        if (movie.destroy)
            render status: 204
          else
            render json: { message: "Unable to remove this movie" }, status: 400
          end
    end

    private

    def movie_params
        params[:movie][:main_actors] ||= []
        params.require(:movie).permit(
            :id,
            :title, 
            :genre,
            :year,
            :runTime,
            :rating,
            main_actors: []
            )
    end

end
