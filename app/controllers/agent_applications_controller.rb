class AgentApplicationsController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_agent_application, only: [:show, :edit, :update, :destroy]

  # GET /agent_applications
  # GET /agent_applications.json
  def index
    @agent_applications = AgentApplication.all
  end

  # GET /agent_applications/1
  # GET /agent_applications/1.json
  def show
  end

  # GET /agent_applications/new
  def new
    @agent_application = AgentApplication.new
  end

  # GET /agent_applications/1/edit
  def edit
  end

  # POST /agent_applications
  # POST /agent_applications.json
  def create
    @agent_application = AgentApplication.new(agent_application_params)
    @agent_application.user = current_user

    respond_to do |format|
      if @agent_application.save
        format.html { redirect_to @agent_application, notice: 'Agent application was successfully created.' }
        format.json { render :show, status: :created, location: @agent_application }
      else
        format.html { render :new }
        format.json { render json: @agent_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agent_applications/1
  # PATCH/PUT /agent_applications/1.json
  def update
    respond_to do |format|
      if @agent_application.update(agent_application_params)
        format.html { redirect_to @agent_application, notice: 'Agent application was successfully updated.' }
        format.json { render :show, status: :ok, location: @agent_application }
      else
        format.html { render :edit }
        format.json { render json: @agent_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agent_applications/1
  # DELETE /agent_applications/1.json
  def destroy
    @agent_application.destroy
    respond_to do |format|
      format.html { redirect_to agent_applications_url, notice: 'Agent application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agent_application
      @agent_application = AgentApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agent_application_params
      params.require(:agent_application).permit(:user_id, :status, :company_name, :company_address, :company_city, :company_zip, :company_state, :check_payable_to, :payment_address, :payment_city, :payment_zip, :company_phone, :agent_cell_phone, :social_security, :company_fax, :license_number, :license_expiration, :eo_policy_number, :eo_expiration)
    end
end
