class User < ActiveRecord::Base

#for the join table
#I wrote the full route because I use id_auto and not auto_id as name for the foreign key

has_many(:autousers, { :class_name => "Autouser", :foreign_key => "id_user" })
has_many(:autos, { :class_name => "Auto", :foreign_key => "id_user",:through => :autousers })


  has_many(:questions, { :class_name => "Question", :foreign_key => "id_user" })
  has_many(:answers, { :class_name => "Answer", :foreign_key => "id_user" })
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
