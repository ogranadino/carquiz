class Auto < ActiveRecord::Base
has_many(:questions, { :class_name => "Question", :foreign_key => "id_auto" })
has_many(:photos, { :class_name => "Photo", :foreign_key => "id_auto" })





end
