class Cd < ActiveRecord::Base
  belongs_to :artist
  has_many :tracks, :dependent => :destroy
  validates_presence_of :artist_id, :title
end
