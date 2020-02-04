class GenresController < ApplicationController
    def show
        @genre = Genre.find_by(id_params)
    end

    def create 
        @genre = Genre.create(artist_params)
        redirect_to @genre
    end

    def new
        @genre = Genre.new
    end

    def edit
        @genre = Genre.find(params[:id])
    end
    
    def update
        @genre = Genre.find(params[:id])
        @genre.update(artist_params)
        redirect_to @genre
    end

    private

    def artist_params
        params.require(:genre).permit(:name)
    end

    def id_params
        params.permit(:id)
    end
end
