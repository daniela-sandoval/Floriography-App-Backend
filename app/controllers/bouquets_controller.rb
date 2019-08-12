class BouquetsController < ApplicationController

  def index
    bouquets = Bouquet.all
    render json: bouquets
  end

  def create
    tone = analyzeTone(params[:sentence])
    bouquet = Bouquet.create(bouquet_params)
    bouquet.makeInputBouquet(tone)
    render json: bouquet
  end

  def create_adj
    bouquet = Bouquet.create(bouquet_params)
    bouquet.makeAdjBouquet(params[:adjectives])
    byebug
    render json: bouquet
  end

  def create_rand
    bouquet = Bouquet.create(bouquet_params)
    bouquet.makeRandomBouquet
    render json: bouquet
  end

  def destroy
    bouquet = Bouquet.find(params[:id])
    bouquet.destroy
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

  def bouquet_params
    params.permit(:user_id, :name)
  end


end
