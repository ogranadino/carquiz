class QuestionsController < ApplicationController

  helper_method :details

  def details(auto)
    brand = auto.brand
    model = auto.model
    year = auto.year.to_s
    detail = brand+" "+model+" "+year
    return detail
  end


  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
    @auto = Auto.find(params[:id])
  end



  def create
    @question = Question.new
    @question.id_auto = params[:id_auto]
    @question.id_user = params[:id_user]
    @question.question = params[:question]
    @question.likes = params[:likes]

    if @question.save
       redirect_to "/autos/"+@question.id_auto.to_s, :notice => "Question created successfully."
    else
       redirect_to :back, :alert => "Questions can't be empty."
      #render 'new'
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])

    @question.id_auto = params[:id_auto]
    @question.id_user = params[:id_user]
    @question.question = params[:question]
    @question.likes = params[:likes]

    if @question.save
      redirect_to "/questions", :notice => "Question updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @question = Question.find(params[:id])

    @question.destroy

    redirect_to "/questions", :notice => "Question deleted."
  end
end
