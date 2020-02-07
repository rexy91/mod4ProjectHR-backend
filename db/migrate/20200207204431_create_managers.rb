class CreateManagers < ActiveRecord::Migration[6.0]
  def change
    create_table :managers do |t|
      t.string :name
      t.string :password_digest
      t.string :username

      t.timestamps
    end
  end
end
