class User < ApplicationRecord
  has_many :sittings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
