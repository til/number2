class Place < ActiveRecord::Base
  attr_accessible :address, :name, :zip

  validates :address, :name, :presence => true

  validates :zip, :numericality => { :only_integer => true },
                  :length => { :is => 5 },
                  :presence => true
end
