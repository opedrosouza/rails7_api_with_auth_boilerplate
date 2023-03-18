# frozen_string_literal: true
require "rails_helper"

RSpec.describe "Registrations" do
  describe "POST /registrations" do
    let(:password) { "passworD123" }
    let(:params) do
      {
        account: {
          email: "pedro@mail.com",
          password:,
          password_confirmation: password,
        },
      }
    end

    context "when params are valid" do
      let(:account_serializer) { AccountSerializer.new(Account.last) }

      before { post "/registrations", params: }

      it "returns http success" do
        expect(response).to have_http_status(:success)
      end

      it "returns the created account" do
        expect(response.body).to include(account_serializer.to_json)
      end
    end

    context "when params are invalid" do
      describe "when password and password confirmation do not match" do
        before do
          params[:account][:password_confirmation] = "different_password"
          post "/registrations", params:
        end

        it "returns http unprocessable entity" do
          expect(response).to have_http_status(:unprocessable_entity)
        end

        it "returns the errors" do
          expect(response.body).to include("Password and password confirmation do not match")
        end
      end

      describe "when account params are missing" do
        before do
          params.delete(:account)
          post "/registrations", params:
        end

        it "returns http unprocessable entity" do
          expect(response).to have_http_status(:unprocessable_entity)
        end

        it "returns the errors" do
          expect(response.body).to include("No account params")
        end
      end
    end
  end

end
