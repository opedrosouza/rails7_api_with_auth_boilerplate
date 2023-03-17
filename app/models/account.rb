# frozen_string_literal: true
# == Schema Information
#
# Table name: accounts
#
#  id              :uuid             not null, primary key
#  email           :string           default(""), not null
#  password_digest :string
#  user_type       :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :uuid
#
# Indexes
#
#  index_accounts_on_email  (email) UNIQUE
#  index_accounts_on_user   (user_type,user_id)
#
class Account < ApplicationRecord

  has_secure_password

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, allow_nil: true, length: { minimum: 6 }, format: { with: /(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])/ }

  # This way we can have multiple types of users and let the account handle the authentication
  belongs_to :user, polymorphic: true, optional: true

  before_validation if: -> { email.present? } do
    self.email = email.downcase.strip
  end

end
