# frozen_string_literal: true
class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts, id: :uuid do |t|
      t.string :email, null: false, default: ""
      t.string :password_digest
      t.references :user, polymorphic: true, null: true, type: :uuid

      t.timestamps
    end
    add_index :accounts, :email, unique: true
  end
end
