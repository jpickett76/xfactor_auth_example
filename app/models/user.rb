class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :devise_xfactor_authenticatable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  
  has_one_time_password(encrypted: true)
  def totp_enabled?
    false
  end
  

end
