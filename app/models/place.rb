class Place < ActiveRecord::Base
  attr_accessible :address, :name, :zip, :picture,
                  :country, :comment

  mount_uploader :picture, PictureUploader

  geocoded_by :address
  after_validation :geocode
  acts_as_gmappable :process_geocoding => false

  validates :address, :name, :presence => true

  validates :zip, :numericality => { :only_integer => true },
                  :length => { :is => 5 },
                  :presence => true

  def full_address
    address + " " + zip
  end

  def silly_comment
    full_address.reverse
  end
end
