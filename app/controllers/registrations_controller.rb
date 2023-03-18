# frozen_string_literal: true
class RegistrationsController < ApplicationController

  def create
    render json: { errors: "No account params" }, status: :unprocessable_entity and return if params[:account].blank?
    unless params[:account][:password] == params[:account][:password_confirmation]
      render json: { errors: "Password and password confirmation do not match" },
             status: :unprocessable_entity and return
    end

    account = Account.new(account_params)
    if account.save
      render json: account
    else
      render json: account.errors, status: :unprocessable_entity
    end
  end

  private

  def account_params
    params.require(:account).permit(:email, :password, :password_confirmation)
  end

end
