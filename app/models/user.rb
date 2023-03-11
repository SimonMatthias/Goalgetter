class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo
  has_many :fiveyeargoals
  has_many :yearlygoals, through: :fiveyeargoals
  has_many :quarterlygoals, through: :yearlygoals
  has_many :weeklytodos, through: :quarterlygoals

end
