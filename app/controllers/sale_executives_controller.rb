class SaleExecutivesController < ApplicationController
  before_action :set_sale_executive, only: [:show, :edit, :update, :destroy]

  # GET /sale_executives
  # GET /sale_executives.json
  def index
    @sale_executives = SaleExecutive.all
  end

  # GET /sale_executives/1
  # GET /sale_executives/1.json
  def show
  end

  # GET /sale_executives/new
  def new
    @sale_executive = SaleExecutive.new
  end

  # GET /sale_executives/1/edit
  def edit
  end

  # POST /sale_executives
  # POST /sale_executives.json
  def create
    @sale_executive = SaleExecutive.new(sale_executive_params)

    respond_to do |format|
      if @sale_executive.save
        format.html { redirect_to @sale_executive, notice: 'Sale executive was successfully created.' }
        format.json { render :show, status: :created, location: @sale_executive }
      else
        format.html { render :new }
        format.json { render json: @sale_executive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sale_executives/1
  # PATCH/PUT /sale_executives/1.json
  def update
    respond_to do |format|
      if @sale_executive.update(sale_executive_params)
        format.html { redirect_to @sale_executive, notice: 'Sale executive was successfully updated.' }
        format.json { render :show, status: :ok, location: @sale_executive }
      else
        format.html { render :edit }
        format.json { render json: @sale_executive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sale_executives/1
  # DELETE /sale_executives/1.json
  def destroy
    @sale_executive.destroy
    respond_to do |format|
      format.html { redirect_to sale_executives_url, notice: 'Sale executive was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale_executive
      @sale_executive = SaleExecutive.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sale_executive_params
      params.require(:sale_executive).permit(:name, :email, :password)
    end
end
