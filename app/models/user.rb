class User < ApplicationRecord
  enum user_type: { saloon: 0, customer: 1 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.all_saloons
    where(user_type: 'saloon')
  end
end
