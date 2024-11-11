class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answers = ["I don't care, get dressed and go to work", 'Silly question, get dressed and go to work', 'Great!']
    if params[:question]
      @question = params[:question]
      if @question.include?("?")
        @coachanswer = @answers[1]
      elsif @question == 'I am going to work'
        @coachanswer = @answers[2]
      else
        @coachanswer = @answers[0]
      end
    end
  end

end
