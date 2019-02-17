class MeddrasController < ApplicationController
  before_action :set_meddra, only: [:show, :edit, :update, :destroy]

  # GET /meddras
  # GET /meddras.json
  def index
    @meddras = Meddra.all
  end

  # GET /meddras/1
  # GET /meddras/1.json
  def show
  end

  # GET /meddras/new
  def new
    @meddra = Meddra.new
  end

  # GET /meddras/1/edit
  def edit
  end

  # POST /meddras
  # POST /meddras.json
  def create
    @meddra = Meddra.new(meddra_params)

    respond_to do |format|
      if @meddra.save
        format.html { redirect_to @meddra, notice: 'Meddra was successfully created.' }
        format.json { render :show, status: :created, location: @meddra }
      else
        format.html { render :new }
        format.json { render json: @meddra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meddras/1
  # PATCH/PUT /meddras/1.json
  def update
    respond_to do |format|
      if @meddra.update(meddra_params)
        format.html { redirect_to @meddra, notice: 'Meddra was successfully updated.' }
        format.json { render :show, status: :ok, location: @meddra }
      else
        format.html { render :edit }
        format.json { render json: @meddra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meddras/1
  # DELETE /meddras/1.json
  def destroy
    @meddra.destroy
    respond_to do |format|
      format.html { redirect_to meddras_url, notice: 'Meddra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meddra
      @meddra = Meddra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meddra_params
      params.require(:meddra).permit(:preferred_term, :preferred_term_code)
    end
end
