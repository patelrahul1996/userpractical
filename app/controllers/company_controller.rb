class CompanyController < ApplicationController
    def new
        @company = Company.new
    end

    def edit
        
    end

    def create
        @company = Company.new(company_params)
    
        respond_to do |format|
          if @company.save
            format.html { redirect_to home_index_url, notice: "Company was successfully created." }
            format.json { render :show, status: :created, location: @company }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @company.errors, status: :unprocessable_entity }
          end
        end
      end

      def show
      end

      def update 
      end
    private
      # Only allow a list of trusted parameters through.
      def company_params
        params.require(:company).permit(:company_name, :company_email, :company_type, :company_address, :company_city, :company_state, :company_pincode, :company_contact_1, :company_contact_2, :created_by, :updated_by)
      end
    
end
