# Region that belongs to city
class Region < ActiveRecord::Base
  belongs_to :city
end
