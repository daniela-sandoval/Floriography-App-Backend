class BouquetsController < ApplicationController

  def index
    bouquets = Bouquet.all
    render json: bouquets
  end

  def create
    tone = analyzeTone(params[:text])
    byebug
    bouquet = Bouquet.create(params)
    bouquet.makeInputBouquet(tone, bouquet)
  end


  private

  def analyzeTone(text)
    tone_analyzer = IBMWatson::ToneAnalyzerV3.new(
      version: "2017-09-21",
      iam_apikey: Rails.application.credentials.api_key,
      url: "https://gateway.watsonplatform.net/tone-analyzer/api"
    )
    tone = tone_analyzer.tone(
      tone_input: {text: text},
      content_type: "application/json"
    )
    textTone = tone.result["document_tone"]["tones"][0]["tone_name"]
  end


end
