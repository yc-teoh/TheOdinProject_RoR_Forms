class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password

      t.timestamps
    end

    # make the username and email unique for each users
    add_index :users, [:username, :email], unique: true
  end
end
