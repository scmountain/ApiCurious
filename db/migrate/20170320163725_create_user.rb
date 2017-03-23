class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :token
      t.string :name
      t.integer :uid
      t.string :provider
      t.string :email
      t.string :image
    end
  end
end
