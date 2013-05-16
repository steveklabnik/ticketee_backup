class User < ActiveRecord::Base
  has_secure_password

  def to_s
    "#{email} (#{admin? ? "Admin" : "user"})"
  end
end
