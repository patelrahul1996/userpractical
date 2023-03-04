class CreateCompanyCustomFields < ActiveRecord::Migration[6.1]
  def change
    create_table :company_custom_fields do |t|
      t.string :custom_field
      t.integer :created_by
      t.integer :updated_by
      t.references :companies, null: false, foreign_key: true

      t.timestamps
    end
  end
end
