class FirstController < ApplicationController
  #require './app/models/auto.rb'

  def index
    @autos = Auto.all
    @brands = Auto.order("brand ASC").uniq.pluck(:brand) #.to_set esto era para dejarlo como hash
    @questions = Question.all
    @lastQuestions = Question.order("created_at DESC")
    @popAnswers = Answer.all

    @q1 = Question.new
    @q2 = Question.new
    @q3 = Question.new
    @q4 = Question.new
    @q = Hash.new


    i = 0
    num = @questions.count

    while i < num  do

      respuestas = @questions[i].answers.count

      if respuestas > @q1.answers.count
        @q1 = @questions[i]
      elsif respuestas > @q2.answers.count
        @q2 = @questions[i]
      elsif respuestas > @q3.answers.count
        @q3 = @questions[i]
      elsif respuestas > @q4.answers.count
        @q4 = @questions[i]

      end
      i=i+1
    end

    @q[1] = @q1
    @q[2] = @q2
    @q[3] = @q3
    @q[4] = @q4

  end

  helper_method :details

  def details(auto)
    brand = auto.brand
    model = auto.model
    year = auto.year.to_s
    detail = brand+" "+model+" "+year
    return detail
  end
# I SPEND 3 HOURS DOING THIS FOR LOCATING THE POPULAR QUESTIONS...
end

