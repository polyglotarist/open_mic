class Api::ArtistsController < ApplicationController
  def index
    @artists = Artist.all
    search_terms = params[:search]
    if search_terms
      @artists = @artists.where("name iLIKE ?", "%#{search_terms}%")
    end
    @artists = @artists
    render :index
  end

  def create
    @artist = Artist.new(
                          name: params[:name] 
                        )
    if @artist.save
      render :show
    else
      render json: { errors: @artist.errors.full_messages }, status: :unprocessable_entity
    end
  end
  
  def show
    @artist = Artist.find(params[:id])
    render :show
  end


  def update
    @artist = Artist.find(params[:id])
    @artist.name = params[:name] || @artist.name

    if @artist.save
      render :show
    else
      render json: {errors: @artist.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    artist = Artist.find(params[:id])
    artist.destroy
    render json: { message: "Successfully removed artist" }
  end
end
