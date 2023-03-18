# frozen_string_literal: true
class AccountSerializer < ActiveModel::Serializer

  attributes :id, :email, :created_at, :updated_at

end
