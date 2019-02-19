class ClinicalTrialsController < ApplicationController
  before_action :set_clinical_trial, only: [:show, :edit, :update, :destroy]

  # GET /clinical_trials
  # GET /clinical_trials.json
  def index
    @clinical_trials = ClinicalTrial.all
  end

  # GET /clinical_trials/1
  # GET /clinical_trials/1.json
  def show
  end

  # GET /clinical_trials/new
  def new
    @clinical_trial = ClinicalTrial.new
  end

  # GET /clinical_trials/1/edit
  def edit
  end

  # POST /clinical_trials
  # POST /clinical_trials.json
  def create
    @clinical_trial = ClinicalTrial.new(clinical_trial_params)

    respond_to do |format|
      if @clinical_trial.save
        format.html { redirect_to @clinical_trial, notice: 'Clinical trial was successfully created.' }
        format.json { render :show, status: :created, location: @clinical_trial }
      else
        format.html { render :new }
        format.json { render json: @clinical_trial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clinical_trials/1
  # PATCH/PUT /clinical_trials/1.json
  def update
    respond_to do |format|
      if @clinical_trial.update(clinical_trial_params)
        format.html { redirect_to @clinical_trial, notice: 'Clinical trial was successfully updated.' }
        format.json { render :show, status: :ok, location: @clinical_trial }
      else
        format.html { render :edit }
        format.json { render json: @clinical_trial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinical_trials/1
  # DELETE /clinical_trials/1.json
  def destroy
    @clinical_trial.destroy
    respond_to do |format|
      format.html { redirect_to clinical_trials_url, notice: 'Clinical trial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinical_trial
      @clinical_trial = ClinicalTrial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clinical_trial_params
      params.require(:clinical_trial).permit(:code)
    end
end
