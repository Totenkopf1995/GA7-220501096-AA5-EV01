class AddAuthenticationTokenToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :authentication_token, :string, limit: 30
    add_index :users, :authentication_token, unique: true
  end
end
