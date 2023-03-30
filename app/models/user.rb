class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :registerable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :recoverable, :rememberable, :validatable
end
