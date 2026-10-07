class CreateEmployees < ActiveRecord::Migration[8.0]
  def change
    create_table :employees do |t|
      t.string :employee_number
      t.string :first_name
      t.string :last_name
      t.string :email
      t.references :country, null: false, foreign_key: true
      t.references :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
