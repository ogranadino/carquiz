class FirstController < ApplicationController
require './app/models/auto.rb'
  def index
    @autos = Auto.all
    @questions = Question.all
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
