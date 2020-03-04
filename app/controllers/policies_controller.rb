class PoliciesController < ApplicationController
  before_action :authenticate_user!

  # GET /policies
  # GET /policies.json
  def index
    @policies = Policy.all
  end

  # GET /policies/new
  def new
    @policy = Policy.new
    # Variables para llenar listas
    @clients = Client.all.collect { |c| [c.social_reason, c.id]}
    @products = Product.all.collect { |p| [p.name, p.id]}
    @payment_types = %w[Anual Mensual Trimestral]
  end

  # POST /policies
  # POST /policies.json
  def create
    @policy = Policy.new(policy_params)

    if @policy.save
      render json: { status: :created, location: policies_path }
    else
      render json: { status: :unprocessable_entity }
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def policy_params
    params.require(:policy).permit(:prime, :start_date, :end_date, :comision, :payment_type, :product_id, :client_id, :sale_executive_id)
  end
end
