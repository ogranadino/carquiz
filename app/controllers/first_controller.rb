class FirstController < ApplicationController
require './app/models/auto.rb'
  def index
    @autos = Auto.all
    @brands = Auto.order("brand ASC").uniq.pluck(:brand) #.to_set esto era para dejarlo como hash
    @questions = Question.all
    @lastQuestions = Question.order("created_at DESC")
    @popAnswers = Answer.order("likes DESC")



  end

helper_method :details

def details(auto)
  brand = auto.brand
  model = auto.model
  year = auto.year.to_s
  detail = brand+" "+model+" "+year
  return detail
end

end

