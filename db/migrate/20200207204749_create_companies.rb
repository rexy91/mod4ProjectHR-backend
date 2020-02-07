class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :staff_count
      t.belongs_to :manager, null: false, foreign_key: true

      t.timestamps
    end
  end
end
