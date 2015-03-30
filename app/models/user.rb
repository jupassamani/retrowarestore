class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
<<<<<<< HEAD
  devise :database_authenticatable, :registerable,
=======
  devise :database_authenticatable, 
>>>>>>> FETCH_HEAD
         :recoverable, :rememberable, :trackable, :validatable
end
