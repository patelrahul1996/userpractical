class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :company_email
      t.string :company_type
      t.string :company_address
      t.string :company_city
      t.string :company_state
      t.integer :company_pincode
      t.integer :company_contact_1
      t.integer :company_contact_2
      t.integer :created_by
      t.integer :updated_by

      t.timestamps
    end
  end
end
