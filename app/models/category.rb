class Category < ActiveRecord::Base
  # validates_presence_of :description does the same effect
  validates :description, presence: true

end
