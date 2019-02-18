class User < ApplicationRecord
  # Include default devise modules. Others available are: :lockable, :timeoutable, :trackable and :omniauthable

  enum role: {staff: 'staff', tenant: 'tenant', admin: 'admin'}
  devise :database_authenticatable, :recoverable, :registerable, :rememberable, :validatable, :confirmable, :invitable, :invite_for => 2.hours

  scope :confirmed, -> { where.not(confirmed_at: nil) }

  validates :first_name, :last_name, :email, :phone, presence: true
  validates :first_name, :last_name, length: {maximum: 20}
  validates :email, :phone, uniqueness: true

  before_create :set_default_role, :if => :new_record?
  has_many :properties
  has_many :leases
  
  def fullname  	
    "#{self.first_name} #{self.last_name}"
  end

  def is_admin?
    self.role == 'admin'
  end

  def is_staff?
    self.role == 'staff'
  end

  private
	  def set_default_role
	  	self.role ||= 'staff'
	  end
end
