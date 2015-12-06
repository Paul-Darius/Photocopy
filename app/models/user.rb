class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
<<<<<<< HEAD

=======
  validates_format_of :email, :with => /@ait.asia\z/
>>>>>>> c63c5deb2a4bdc9cc60259b69a838071f36364a9
end
