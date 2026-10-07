class AddConstraintsToSalaryManagement < ActiveRecord::Migration[8.0]
  def change
    change_column_null :countries, :name, false
    change_column_null :countries, :code, false
    change_column_null :countries, :currency, false

    change_column_null :departments, :name, false

    change_column_null :employees, :employee_number, false
    change_column_null :employees, :first_name, false
    change_column_null :employees, :last_name, false
    change_column_null :employees, :email, false

    change_column_null :salaries, :amount, false
    change_column_null :salaries, :currency, false
    change_column_null :salaries, :effective_from, false

    change_column_null :exchange_rates, :from_currency, false
    change_column_null :exchange_rates, :to_currency, false
    change_column_null :exchange_rates, :rate, false
    change_column_null :exchange_rates, :effective_date, false

    add_index :countries, :code, unique: true
    add_index :departments, :name, unique: true
    add_index :employees, :employee_number, unique: true
    add_index :employees, :email, unique: true

    add_index :exchange_rates,
              [:from_currency, :to_currency, :effective_date],
              unique: true,
              name: "idx_exchange_rates_currency_date"
  end
end