class User < ApplicationRecord
  rolify :strict => true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }

  has_many :products
  has_many :orders

 after_create :assign_default_role
 validate :must_have_a_role, on: :update



 private

 after_create :assign_default_role

  def assign_default_role 
    self.add_role(:customer) if self.roles.blank?
  end

  def must_have_a_role
    unless roles.any? 
      errors.add(:roles, "must have role")
    end
  end
end