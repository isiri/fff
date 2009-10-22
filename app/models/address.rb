class Address < ActiveRecord::Base
  belongs_to :addressable, :polymorphic => true

  validates_presence_of :address, :city, :state, :zip
  attr_accessible :address, :city, :state, :zip
end
