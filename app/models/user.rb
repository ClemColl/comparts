class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    def is_artist?
    	if current_user[:role_id] == 'artist'
    		return true
    	else
    		return false
    	end
    end
end
