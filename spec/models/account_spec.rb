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
require "rails_helper"

RSpec.describe Account do
  describe "validations" do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
    it { is_expected.to validate_length_of(:password).is_at_least(6) }
  end

  describe "associations" do
    it { is_expected.to belong_to(:user).optional }
  end
end
