class Api::SongsController < ApplicationController
  def index
    @songs = Song.all 
    search_terms = params[:search]
    if search_terms
      @songs = @songs.where("title iLIKE ?", "%#{search_terms}%")
    end
    render 'index.json.jbuilder'
  end

  def create 
    
    @song = Song.new(
                      title: params[:title],
                      lyrics: params[:lyrics],
                      chords_list: params[:chords_list],
                      artist_id: params[:artist_id],
                      category_id: params[:category_id]

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

  def update
    @song = Song.find(params[:id])
    @song.title = params[:title] || @song.title
    @song.lyrics = params[:lyrics] || @song.lyrics
    @song.category_id = params[:category_id] || @song.category_id
    @song.artist_id = params[:artist_id] || @song.artist_id
    @song.chords_list = params[:chrods_list] || @song.chords_list 

    if @song.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @song.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy
    render json: { message: "Successfully removed song" }
  end
end
