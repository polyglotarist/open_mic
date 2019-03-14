class Api::ChordsController < ApplicationController
  def index
    @chords = Chord.all
    render 'index.json.jbuilder'
  end

  def create
    @chord = Chord.new(
                        note = params[:note],
                        row = params[:row],
                        location = params[:location]
                      )
    if @chord.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @chord.errors.full_messages }, status: :unprocessable_entity
    end
  end
  
  def show
    @chord = Chord.find(params[:id])
    render 'show.json.jbuilder'

  end

  def update
    @chord = Chord.find(params[:id])
    @chord.note = params[:note] || @chord.note
    @chord.row = params[:row] || @chord.row
    @chord.location = params[:location] || @chord.location

    if @chord.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @chord.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    chord = Chord.find(params[:id])
    chord.destroy
    render json: { message: "Successfully removed chord." }
  end
end
