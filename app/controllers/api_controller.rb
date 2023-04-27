class ApiController < ApplicationController
  def wordle
    word = generate_word
    render json: { word: word }
  end

  private

  def generate_word
    words = ["logic", "eager", "power", "bidet", "chain", "media"]
    words.sample
  end
end
