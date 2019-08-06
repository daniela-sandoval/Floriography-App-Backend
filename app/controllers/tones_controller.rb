class TonesController < ApplicationController

  def index
    tones = Tone.all
    render json: tones
  end

end
