class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tracks
  has_many :comments, through: :tracks


  mount_uploader :image, UserImageUploader
   
  def admin?
    self.role == 'admin'
  end

  def user?
    self.role == 'user'
  end

  before_create :set_default_role

  private
  def set_default_role
    self.role = "user"
  end


end
