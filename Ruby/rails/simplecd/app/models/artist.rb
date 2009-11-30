class Artist < ActiveRecord::Base
  has_many :cd, :dependent => :destroy
  validates_presence_of :name
end
