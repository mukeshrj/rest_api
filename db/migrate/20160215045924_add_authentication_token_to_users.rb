class AddAuthenticationTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :authentication_token, :string, default: ""
    add_index :users, :authentication_token, unique: true
  end
end