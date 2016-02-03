# Instruments table
class Instrument < ActiveRecord::Base
  has_many :users_instruments
  has_many :users, through: :users_instruments
end
