class HighLevelGroupTermsController < ApplicationController
  before_action :set_high_level_group_term, only: [:show, :edit, :update, :destroy]

  # GET /high_level_group_terms
  # GET /high_level_group_terms.json
  def index
    @high_level_group_terms = HighLevelGroupTerm.all
  end

  # GET /high_level_group_terms/1
  # GET /high_level_group_terms/1.json
  def show
  end

  # GET /high_level_group_terms/new
  def new
    @high_level_group_term = HighLevelGroupTerm.new
  end

  # GET /high_level_group_terms/1/edit
  def edit
  end

  # POST /high_level_group_terms
  # POST /high_level_group_terms.json
  def create
    @high_level_group_term = HighLevelGroupTerm.new(high_level_group_term_params)

    respond_to do |format|
      if @high_level_group_term.save
        format.html { redirect_to @high_level_group_term, notice: 'High level group term was successfully created.' }
        format.json { render :show, status: :created, location: @high_level_group_term }
      else
        format.html { render :new }
        format.json { render json: @high_level_group_term.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /high_level_group_terms/1
  # PATCH/PUT /high_level_group_terms/1.json
  def update
    respond_to do |format|
      if @high_level_group_term.update(high_level_group_term_params)
        format.html { redirect_to @high_level_group_term, notice: 'High level group term was successfully updated.' }
        format.json { render :show, status: :ok, location: @high_level_group_term }
      else
        format.html { render :edit }
        format.json { render json: @high_level_group_term.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /high_level_group_terms/1
  # DELETE /high_level_group_terms/1.json
  def destroy
    @high_level_group_term.destroy
    respond_to do |format|
      format.html { redirect_to high_level_group_terms_url, notice: 'High level group term was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_high_level_group_term
      @high_level_group_term = HighLevelGroupTerm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def high_level_group_term_params
      params.require(:high_level_group_term).permit(:code)
    end
end
