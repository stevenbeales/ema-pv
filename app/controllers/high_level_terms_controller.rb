class HighLevelTermsController < ApplicationController
  before_action :set_high_level_term, only: [:show, :edit, :update, :destroy]

  # GET /high_level_terms
  # GET /high_level_terms.json
  def index
    @high_level_terms = HighLevelTerm.all
  end

  # GET /high_level_terms/1
  # GET /high_level_terms/1.json
  def show
  end

  # GET /high_level_terms/new
  def new
    @high_level_term = HighLevelTerm.new
  end

  # GET /high_level_terms/1/edit
  def edit
  end

  # POST /high_level_terms
  # POST /high_level_terms.json
  def create
    @high_level_term = HighLevelTerm.new(high_level_term_params)

    respond_to do |format|
      if @high_level_term.save
        format.html { redirect_to @high_level_term, notice: 'High level term was successfully created.' }
        format.json { render :show, status: :created, location: @high_level_term }
      else
        format.html { render :new }
        format.json { render json: @high_level_term.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /high_level_terms/1
  # PATCH/PUT /high_level_terms/1.json
  def update
    respond_to do |format|
      if @high_level_term.update(high_level_term_params)
        format.html { redirect_to @high_level_term, notice: 'High level term was successfully updated.' }
        format.json { render :show, status: :ok, location: @high_level_term }
      else
        format.html { render :edit }
        format.json { render json: @high_level_term.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /high_level_terms/1
  # DELETE /high_level_terms/1.json
  def destroy
    @high_level_term.destroy
    respond_to do |format|
      format.html { redirect_to high_level_terms_url, notice: 'High level term was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_high_level_term
      @high_level_term = HighLevelTerm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def high_level_term_params
      params.require(:high_level_term).permit(:code)
    end
end
