class CompanycustomfieldController < ApplicationController
    def index    
        @company = Company.all
    end

    def new
        @companycustomfield =  CompanyCustomField.new
    end

    def edit
        @companycustomfield =  CompanyCustomField.find(params[:id])
    end

    def create
        @company = Company.find(params[:company_custom_field][:company_id])
        @company.company_custom_fields.insert_all([
        { custom_field: params[:company_custom_field][:custom_field] , created_by: current_user.id, updated_by: current_user.id,created_at: DateTime.now(),updated_at: DateTime.now() }
        ])
        respond_to do |format|
          if @company.persisted?
            format.html { redirect_to companycustomfield_index_path, notice: "Custome Field was successfully created." }
            format.json { render :index, status: :created, location: @company }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @company.errors, status: :unprocessable_entity }
          end
        end
    end

    def update
      custom = params[:company_custom_field]
      CompanyCustomField.where('id = ?',custom[:id]).update_all(custom_field: custom[:custom_field],company_id: custom[:company_id])
        respond_to do |format|
          
            format.html { redirect_to companycustomfield_index_path, notice: "Custome Field was successfully updated." }
            format.json { render :index, status: :ok, location: @customfield }
        end
      end
    
    private
    # Only allow a list of trusted parameters through.
    def companycustomfield_params
      params.require(:company_custom_field).permit(:id, :custom_field, :company_id)
    end
end
