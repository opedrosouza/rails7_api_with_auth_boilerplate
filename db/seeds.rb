# frozen_string_literal: true
if Rails.env.development?
  Account.create!(email: "pedro@example.com", password: "passworD123")
end
