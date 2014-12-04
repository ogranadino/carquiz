class Autouser < ActiveRecord::Base

#for the join table
#I wrote the full route because I use id_auto and not auto_id as name for the foreign key
belongs_to(:user, { :class_name => "User", :foreign_key => "id_user" })
belongs_to(:auto, { :class_name => "User", :foreign_key => "id_auto" })
end

