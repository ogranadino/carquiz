class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end

  def show
    @answer = Answer.find(params[:id])
  end

  def new
    @answer = Answer.new
    @question = Question.find(params[:id])
  end

  def create
    @answer = Answer.new
    @answer.id_question = params[:id_question]
    @answer.id_user = params[:id_user]
    @answer.answer = params[:answer]
    @answer.likes = params[:likes]
    question = Question.find(@answer.id_question)
    car = Auto.find(question.id_auto)

    if @answer.save
      redirect_to "/autos/"+car.id.to_s, :notice => "Answer created successfully."
    else
      render 'new'
    end
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def update
    @answer = Answer.find(params[:id])

    @answer.id_question = params[:id_question]
    @answer.id_user = params[:id_user]
    @answer.answer = params[:answer]
    @answer.likes = params[:likes]

    if @answer.save
      redirect_to "/answers", :notice => "Answer updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @answer = Answer.find(params[:id])

    @answer.destroy

    redirect_to "/answers", :notice => "Answer deleted."
  end
end
