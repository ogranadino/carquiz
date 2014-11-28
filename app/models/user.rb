class User < ActiveRecord::Base
  has_many(:questions, { :class_name => "Question", :foreign_key => "id_user" })
  has_many(:answers, { :class_name => "Answer", :foreign_key => "id_user" })
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
