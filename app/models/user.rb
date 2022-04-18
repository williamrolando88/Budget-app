class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::Allowlist

  devise :database_authenticatable, :registerable, :trackable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  has_many :operations, dependent: :destroy
  has_many :allowlisted_jwts, dependent: :destroy
  has_many :categories, dependent: :destroy
end
