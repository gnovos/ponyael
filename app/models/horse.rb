class Horse < ActiveRecord::Base
  attr_accessible :image_url, :breed, :price, :cross, :name
end
