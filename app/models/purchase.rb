class Purchase < ActiveRecord::Base
  validates_presence_of :file_url
end
