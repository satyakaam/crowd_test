class PhrasesController < ApplicationController
  def index
    @phrases = Phrase.where(id: session[:phrases_ids])
  end

  def get_phrase
    phrase = Phrase.next(session[:phrases_ids])
    if phrase.present?
      session[:phrases_ids].present? ? session[:phrases_ids] << phrase.id : session[:phrases_ids] = [phrase.id]
      response = {name: phrase.name}
    else
      response = { error: 'no more phrases' }
    end
    render json: response
  end

  def clear
    session[:phrases_ids] = []
    render json: {message: 'cleared'}
  end
end
