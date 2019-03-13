class Api::ArtistsController < ApplicationController
  def index
    @artists = Artist.all
    search_terms = params[:search]
    if search_terms
      @artist = @artist.where("name iLIKE ?", "%#{search_terms}%")
    end
    @artists = @artists.order_by(id: asc)
    render 'index.json.jbuilder'
  end

  def new
    
  end

  def create
    @artist = Artist.new(
                          name: artist.name
                        )
  end
  
  def show
    @artist = Artist.find(params[:id])
    render 'show.json.jbuilder'
  end

  def edit
    
  end

  def update
    @artist = Artist.find(params[:id])
    artist.name = params[:name] || artist.name

    if @artist.save
      render 'show.json.jbuilder'
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