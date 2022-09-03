class MoviesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        movies = Movie.all
        render json: movies
    end

    def show
        movie = find_movie
        render json: movie
    end

    def summary
        movie = find_movie
        render json: movie, serializer: MovieSummarySerializer
    end

    def summaries
        movies = Movie.all
        render json: movies, each_serializer: MovieSummarySerializer
    end

    def create
        new_movie = Movie.create!(movie_params)
        render json: new_movie
    end

    private

    def find_movie
        Movie.find(params[:id])
    end

    def movie_params
        params.permit(:title, :year, :director_id)
    end

    def render_not_found_response
        render json: { error: "Movie not found" }, status: :not_found
    end


    def render_unprocessable_entity_response(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

end
