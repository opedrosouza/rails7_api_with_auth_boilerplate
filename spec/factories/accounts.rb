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
FactoryBot.define do
  factory :account do
    email { Faker::Internet.email }
    password { "passworD123" }
    user { nil }
  end
end
