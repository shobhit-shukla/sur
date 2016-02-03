class User < ActiveRecord::Base
  include TheRole::Api::User

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :address
  has_many :users_instruments
  has_many :instruments, through: :users_instruments
end
