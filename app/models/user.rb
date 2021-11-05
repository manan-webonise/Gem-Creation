class User < ApplicationRecord
  has_many :user_assets

  def to_s
    "#{first_name} #{last_name}"
  end

end
