class AddScheduleToCompanies < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :schedule, :text
  end
end
