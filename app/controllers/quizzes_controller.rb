class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:show, :edit, :destroy]

  def index
    @quizzes = Quiz.all
  end

  def show
  end

  def new
    @quiz = Quiz.new
  end

  def edit
  end

  def create
    @quiz = Quiz.new(quiz_params)
    
    if @quiz.save
      redirect_to @quiz
    else
      render 'new'
    end
  end

  def update
    if @quiz.update(quiz_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  private

  def set_quiz
    @quiz = Quiz.find_by slug: params[:slug]
  end

  def quiz_params
    params.require(:quiz).permit(:title, :slug, :description)
  end
end
