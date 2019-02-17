class AdverseReactionsController < ApplicationController
  before_action :set_adverse_reaction, only: [:show, :edit, :update, :destroy]

  # GET /adverse_reactions
  # GET /adverse_reactions.json
  def index
    @adverse_reactions = AdverseReaction.all
  end

  # GET /adverse_reactions/1
  # GET /adverse_reactions/1.json
  def show
  end

  # GET /adverse_reactions/new
  def new
    @adverse_reaction = AdverseReaction.new
  end

  # GET /adverse_reactions/1/edit
  def edit
  end

  # POST /adverse_reactions
  # POST /adverse_reactions.json
  def create
    @adverse_reaction = AdverseReaction.new(adverse_reaction_params)

    respond_to do |format|
      if @adverse_reaction.save
        format.html { redirect_to @adverse_reaction, notice: 'Adverse reaction was successfully created.' }
        format.json { render :show, status: :created, location: @adverse_reaction }
      else
        format.html { render :new }
        format.json { render json: @adverse_reaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adverse_reactions/1
  # PATCH/PUT /adverse_reactions/1.json
  def update
    respond_to do |format|
      if @adverse_reaction.update(adverse_reaction_params)
        format.html { redirect_to @adverse_reaction, notice: 'Adverse reaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @adverse_reaction }
      else
        format.html { render :edit }
        format.json { render json: @adverse_reaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adverse_reactions/1
  # DELETE /adverse_reactions/1.json
  def destroy
    @adverse_reaction.destroy
    respond_to do |format|
      format.html { redirect_to adverse_reactions_url, notice: 'Adverse reaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adverse_reaction
      @adverse_reaction = AdverseReaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adverse_reaction_params
      params.require(:adverse_reaction).permit(:product_id, :substance_id, :adverse_reaction_type_id)
    end
end
