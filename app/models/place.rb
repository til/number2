class Place < ActiveRecord::Base
  attr_accessible :address, :name, :zip, :picture

  mount_uploader :picture, PictureUploader

  validates :address, :name, :presence => true

  validates :zip, :numericality => { :only_integer => true },
                  :length => { :is => 5 },
                  :presence => true
end
