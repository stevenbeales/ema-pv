class SubstancesController < ApplicationController
  before_action :set_substance, only: [:show, :edit, :update, :destroy]

  # GET /substances
  # GET /substances.json
  def index
    @substances = Substance.all
  end

  # GET /substances/1
  # GET /substances/1.json
  def show
  end

  # GET /substances/new
  def new
    @substance = Substance.new
  end

  # GET /substances/1/edit
  def edit
  end

  # POST /substances
  # POST /substances.json
  def create
    @substance = Substance.new(substance_params)

    respond_to do |format|
      if @substance.save
        format.html { redirect_to @substance, notice: 'Substance was successfully created.' }
        format.json { render :show, status: :created, location: @substance }
      else
        format.html { render :new }
        format.json { render json: @substance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /substances/1
  # PATCH/PUT /substances/1.json
  def update
    respond_to do |format|
      if @substance.update(substance_params)
        format.html { redirect_to @substance, notice: 'Substance was successfully updated.' }
        format.json { render :show, status: :ok, location: @substance }
      else
        format.html { render :edit }
        format.json { render json: @substance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /substances/1
  # DELETE /substances/1.json
  def destroy
    @substance.destroy
    respond_to do |format|
      format.html { redirect_to substances_url, notice: 'Substance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_substance
      @substance = Substance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def substance_params
      params.require(:substance).permit(:name)
    end
end
