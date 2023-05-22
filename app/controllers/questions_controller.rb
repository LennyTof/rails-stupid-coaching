class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question_ask = params[:question]
    if @question_ask == 'I am going to work'
      @response = 'Great!'
    elsif @question_ask.include? '?'
      @response = 'Silly question, get dressed and go to work!'
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
