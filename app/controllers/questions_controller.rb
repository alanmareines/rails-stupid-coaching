class QuestionsController < ApplicationController
  # frozen_string_literal: true

  def ask
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @question = ''
    elsif
      @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don\'t care, get dressed and go to work!"
    end
  end
end
