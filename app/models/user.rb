class User < ApplicationRecord
  has_secure_password
  validates :username,
            presence: true,
            uniqueness: true,
            format: { with: /[a-z]+/ },
            length: { in: 4..21 }

end
