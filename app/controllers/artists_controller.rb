class ArtistsController < ApplicationController

    def show
        @artist = Artist.find_by(id_params)
    end

    def create 
        @artist = Artist.create(artist_params)
        redirect_to @artist
    end

    def new
        @artist = Artist.new
    end

    def edit
        @artist = Artist.find(params[:id])
    end
    
    def update
        @artist = Artist.find(params[:id])
        @artist.update(artist_params)
        redirect_to @artist
    end

    private

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end

    def id_params
        params.permit(:id)
    end

end
