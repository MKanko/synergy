class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :address
      t.string :phone_number
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
