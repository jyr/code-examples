class Track < ActiveRecord::Base
  belongs_to :cd
  validates_presence_of :cd_id, :title
end
