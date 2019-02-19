class LowLevelTermsController < ApplicationController
  before_action :set_low_level_term, only: [:show, :edit, :update, :destroy]

  # GET /low_level_terms
  # GET /low_level_terms.json
  def index
    @low_level_terms = LowLevelTerm.all
  end

  # GET /low_level_terms/1
  # GET /low_level_terms/1.json
  def show
  end

  # GET /low_level_terms/new
  def new
    @low_level_term = LowLevelTerm.new
  end

  # GET /low_level_terms/1/edit
  def edit
  end

  # POST /low_level_terms
  # POST /low_level_terms.json
  def create
    @low_level_term = LowLevelTerm.new(low_level_term_params)

    respond_to do |format|
      if @low_level_term.save
        format.html { redirect_to @low_level_term, notice: 'Low level term was successfully created.' }
        format.json { render :show, status: :created, location: @low_level_term }
      else
        format.html { render :new }
        format.json { render json: @low_level_term.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /low_level_terms/1
  # PATCH/PUT /low_level_terms/1.json
  def update
    respond_to do |format|
      if @low_level_term.update(low_level_term_params)
        format.html { redirect_to @low_level_term, notice: 'Low level term was successfully updated.' }
        format.json { render :show, status: :ok, location: @low_level_term }
      else
        format.html { render :edit }
        format.json { render json: @low_level_term.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /low_level_terms/1
  # DELETE /low_level_terms/1.json
  def destroy
    @low_level_term.destroy
    respond_to do |format|
      format.html { redirect_to low_level_terms_url, notice: 'Low level term was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_low_level_term
      @low_level_term = LowLevelTerm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def low_level_term_params
      params.require(:low_level_term).permit(:code)
    end
end
