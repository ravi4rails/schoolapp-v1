class Employee < ActiveRecord::Base
  has_many :employee_subjects
  has_many :subjects, :through  => :employee_subjects
  belongs_to :department
  validates :email, :presence => true, :uniqueness => true
  before_create :register_user
  
  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end

  def register_user
    user = User.new
    user.email = self.email
    user.password = self.email
    user.role = self.class.to_s
    user.save
  end

end
