class Category < ActiveRecord::Base
  has_many :gadgets
end
