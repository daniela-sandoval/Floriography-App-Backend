class AnalyzerController < ApplicationController

  def analyze
    text = params[:text]

    tone_analyzer = IBMWatson::ToneAnalyzerV3.new(
      version: "2017-09-21",
      iam_apikey: Rails.application.credentials.api_key,
      url: "https://gateway.watsonplatform.net/tone-analyzer/api"
    )
    tone = tone_analyzer.tone(
      tone_input: {text: text},
      content_type: "application/json"
    )
    byebug
    # tone.result["document_tone"]["tones"][0]["tone_name"]
  end

end
