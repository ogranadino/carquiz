class Question < ActiveRecord::Base
  has_many(:answers, { :class_name => "Answer", :foreign_key => "id_question" })
  belongs_to :auto
  belongs_to :user
end
