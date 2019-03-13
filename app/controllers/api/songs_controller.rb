class Api::SongsController < ApplicationController
  def index
    @songs = Song.all
    search_terms = params[:search]
    if search_terms
      @songs = @songs.where("title iLIKE ?", "%#{search_terms}%")
    end
    render 'index.json.jbuilder'
  end

  def new
    
  end

  def create
    @song = Song.new(
                      title: params[:title],
                      lyrics: params[:lyrics]
                    )

    if @song.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @song.errors.full_messages }, status: :unprocessable_entity 
    end

  end
 
  def show
    @song = Song.find(params[:id])
    render "show.json.jbuilder"
  end

  def edit
    
  end

  def update
    @song = Song.find(params[:id])
    @song.title = params[:title] || @song.title
    @song.lyrics = params[:lyrics] || @song.lyrics

    if @song.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @song.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy
    render json: {message: "Successfully removed song" }
  end
end
