class BouquetsController < ApplicationController

  def index
    bouquets = Bouquet.all
    sortedBouquets = bouquets.sort{|a, b| b.created_at <=> a.created_at}
    render json: sortedBouquets
  end

  def create
    tone = analyzeTone(params[:sentence])
    if tone === nil
      render json: { errors: "Unfortunately we didn't find no dominant tone, please try again!" }, status: :unprocessable_entity
    else
      toneName = tone["tone_name"]
      bouquet = Bouquet.create(bouquet_params)
      bouquet.makeInputBouquet(toneName)
      render json: bouquet
    end
  end

  def create_adj
    bouquet = Bouquet.create(bouquet_params)
    bouquet.makeAdjBouquet(params[:adjectives])
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
    textTone = tone.result["document_tone"]["tones"][0]
  end

  def bouquet_params
    params.permit(:user_id, :name)
  end


end
