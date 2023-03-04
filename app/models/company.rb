class Company < ApplicationRecord
    has_many :company_custom_fields
    accepts_nested_attributes_for :company_custom_fields
end
