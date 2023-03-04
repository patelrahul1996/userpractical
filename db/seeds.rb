# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
company = Company.create(company_name: 'INFISTACK', company_email: 'test@gmail.com', company_type: 'PVT', company_address: 'SG HIGHWAY', company_city: 'AHMEDABAD', company_state: 'GUJARAT', company_pincode: 380006, company_contact_1: 8250607080, company_contact_2: nil, created_by: 1, updated_by: 1)
company1 = Company.create(company_name: 'SOINNAVATORS', company_email: 'test1@gmail.com', company_type: 'LLP', company_address: 'ISCON', company_city: 'AHMEDABAD', company_state: 'GUJARAT', company_pincode: 380009, company_contact_1: 8250607020, company_contact_2: nil, created_by: 1, updated_by: 1)
company2 = Company.create(company_name: 'LAINNAVATORS', company_email: 'test2@gmail.com', company_type: 'PVT', company_address: 'SG HIGHWAY', company_city: 'AHMEDABAD', company_state: 'GUJARAT', company_pincode: 380006, company_contact_1: 8250457080, company_contact_2: nil, created_by: 1, updated_by: 1)
company3 = Company.create(company_name: 'THINKBIZZ', company_email: 'test3@gmail.com', company_type: 'PVT', company_address: 'SG HIGHWAY', company_city: 'AHMEDABAD', company_state: 'GUJARAT', company_pincode: 380006, company_contact_1: 8250656080, company_contact_2: nil, created_by: 1, updated_by: 1)
company4 = Company.create(company_name: 'ALPSLOGIC', company_email: 'test4@gmail.com', company_type: 'LLP', company_address: 'SARGASAN', company_city: 'GANDHINAGAR', company_state: 'GUJARAT', company_pincode: 380006, company_contact_1: 8250607870, company_contact_2: nil, created_by: 1, updated_by: 1)

if company.persisted?
    company.company_custom_fields.insert_all([
        { custom_field: 'Gio' , created_by: 1, updated_by: 1,created_at: DateTime.now(),updated_at: DateTime.now() },
        { custom_field: 'IT', created_by: 1, updated_by: 1,created_at: DateTime.now(),updated_at: DateTime.now() }
    ])
    puts company.inspect
end

if company1.persisted?
    company1.company_custom_fields.insert_all([
        { custom_field: 'MARKETING', created_by: 1, updated_by: 1,created_at: DateTime.now(),updated_at: DateTime.now()},
        { custom_field: 'SALES', created_by: 1, updated_by: 1,created_at: DateTime.now(),updated_at: DateTime.now()},
        { custom_field: 'BANKING', created_by: 1, updated_by: 1,created_at: DateTime.now(),updated_at: DateTime.now()}
    ])
    puts company1.inspect   
end
