class ClientsController < ApplicationController
  before_action :authenticate_user!

  # GET /clients
  # GET /clients.json
  def index
    @clients = Client.all
  end

  # GET /clients/1
  # GET /clients/1.json
  def show; end

  # GET /clients/new
  def new
    @client = Client.new
  end

  # POST /clients
  # POST /clients.json
  def create
    @client = Client.new(client_params)
    if @client.save
      render json: { status: :success }
    else
      render json: { status: :error }
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def client_params
    params.require(:client).permit(:social_reason, :address, :giro, :comune_id)
  end
end
