class Photo < ActiveRecord::Base
  belongs_to :auto
  validates :photo, :presence => true
end
