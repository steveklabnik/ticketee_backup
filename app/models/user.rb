class User < ActiveRecord::Base
  has_secure_password

  validates :email, presence: true

  def to_s
    "#{email} (#{admin? ? "Admin" : "user"})"
  end
end
