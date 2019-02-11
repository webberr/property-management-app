class User < ApplicationRecord
  # Include default devise modules. Others available are: :lockable, :timeoutable, :trackable and :omniauthable

  enum role: {staff: 'staff', tenant: 'tenant'}
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :confirmable, :invitable, :invite_for => 2.hours

  scope :confirmed, -> { where.not(confirmed_at: nil) }

  validates :first_name, :last_name, :email, :phone, presence: true
  validates :first_name, :last_name, length: {maximum: 20}
  validates :email, :phone, uniqueness: true

  before_create :set_default_role, :if => :new_record?

  def fullname  	
    "#{self.first_name} #{self.last_name}"
  end

  private
	  def set_default_role
	  	self.role ||= 'staff'
	  end
end
