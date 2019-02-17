class AdverseReactionTypesController < ApplicationController
  before_action :set_adverse_reaction_type, only: [:show, :edit, :update, :destroy]

  # GET /adverse_reaction_types
  # GET /adverse_reaction_types.json
  def index
    @adverse_reaction_types = AdverseReactionType.all
  end

  # GET /adverse_reaction_types/1
  # GET /adverse_reaction_types/1.json
  def show
  end

  # GET /adverse_reaction_types/new
  def new
    @adverse_reaction_type = AdverseReactionType.new
  end

  # GET /adverse_reaction_types/1/edit
  def edit
  end

  # POST /adverse_reaction_types
  # POST /adverse_reaction_types.json
  def create
    @adverse_reaction_type = AdverseReactionType.new(adverse_reaction_type_params)

    respond_to do |format|
      if @adverse_reaction_type.save
        format.html { redirect_to @adverse_reaction_type, notice: 'Adverse reaction type was successfully created.' }
        format.json { render :show, status: :created, location: @adverse_reaction_type }
      else
        format.html { render :new }
        format.json { render json: @adverse_reaction_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adverse_reaction_types/1
  # PATCH/PUT /adverse_reaction_types/1.json
  def update
    respond_to do |format|
      if @adverse_reaction_type.update(adverse_reaction_type_params)
        format.html { redirect_to @adverse_reaction_type, notice: 'Adverse reaction type was successfully updated.' }
        format.json { render :show, status: :ok, location: @adverse_reaction_type }
      else
        format.html { render :edit }
        format.json { render json: @adverse_reaction_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adverse_reaction_types/1
  # DELETE /adverse_reaction_types/1.json
  def destroy
    @adverse_reaction_type.destroy
    respond_to do |format|
      format.html { redirect_to adverse_reaction_types_url, notice: 'Adverse reaction type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adverse_reaction_type
      @adverse_reaction_type = AdverseReactionType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adverse_reaction_type_params
      params.require(:adverse_reaction_type).permit(:name)
    end
end
