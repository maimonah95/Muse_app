class ArtistsController < ApplicationController
 before_action :authenticate_user!, only: [:new, :show,:index]
  before_action :find_artist, except: [:new , :index , :create] 
 
    def show
        @artist = Artist.find(params[:id])
        @songs = @artist.songs
        if @artist.user != current_user
        flash[:notice] = 'Not allowed!'
        redirect_to artists_path
     end
    end
       def index
        # @artists = current_user.Artist.all
        @artists = current_user.artists.all
    end
    def  new
      @artist = Artist.new
    end
    def create
  @artist =Artist.new(person_params)
  @artist.user = current_user
  if @artist.save
  redirect_to artists_path
  else
  render 'new'  
  end
end
    def edit
      @artist
    end
    def update
      @artist.update(person_params)
      redirect_to artists_path
    end
    def destroy
      @artist.delete
      redirect_to artists_path
    end
private
    
    def person_params
      params.require(:artist).permit(:name, :albums, :hometown, :img)
    end
  def find_artist
  @artist = Artist.find(params[:id])
end
end
