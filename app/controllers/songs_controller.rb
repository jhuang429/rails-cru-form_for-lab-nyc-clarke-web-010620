class SongsController < ApplicationController

    def index
        @song = Song.all
    end
    
    def show
        @song = Song.find_by(id_params)
    end

    def create 
        @song = Song.create(artist_params)
        redirect_to @song
    end

    def new
        @song = Song.new
    end

    def edit
        @song = Song.find(params[:id])
    end
    
    def update
        @song = Song.find(params[:id])
        @song.update(artist_params)
        redirect_to @song
    end

    private

    def artist_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end

    def id_params
        params.permit(:id)
    end

end
