require 'pry'
class QuestionsController < ApplicationController
  def index
    @questions = Question.order(created_at: :desc)
  end

  def new
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end

  def create
    @question = Question.new(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to @question}
      else
        format.html { render action: 'new' }
      end
    end

  end


private
    def question_params
      params.require(:question).permit(:title, :description)
    end

end
