class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.belongs_to :company, null: false, foreign_key: true
      t.string :name
      t.string :date_of_birth
      t.string :email

      t.timestamps
    end
  end
end
