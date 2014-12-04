class Auto < ActiveRecord::Base

#for the join table
#I wrote the full route because I use id_auto and not auto_id as name for the foreign key
has_many(:autousers, { :class_name => "Autouser", :foreign_key => "id_auto" })
has_many(:users, { :class_name => "User", :foreign_key => "id_auto",:through => :autousers })



has_many(:questions, { :class_name => "Question", :foreign_key => "id_auto" })
has_many(:photos, { :class_name => "Photo", :foreign_key => "id_auto" })

end
