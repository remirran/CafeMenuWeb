class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  belongs_to :role
  has_and_belongs_to_many :restaurants
  attr_accessible :email, :password, :password_confirmation, :role_id, :login, :first_name, :last_name

  def role?(role)
    return !!self.role
  end
  def title
    self.first_name + " " + self.last_name
  end
end
