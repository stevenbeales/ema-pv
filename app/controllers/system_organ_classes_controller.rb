class SystemOrganClassesController < ApplicationController
  before_action :set_system_organ_class, only: [:show, :edit, :update, :destroy]

  # GET /system_organ_classes
  # GET /system_organ_classes.json
  def index
    @system_organ_classes = SystemOrganClass.all
  end

  # GET /system_organ_classes/1
  # GET /system_organ_classes/1.json
  def show
  end

  # GET /system_organ_classes/new
  def new
    @system_organ_class = SystemOrganClass.new
  end

  # GET /system_organ_classes/1/edit
  def edit
  end

  # POST /system_organ_classes
  # POST /system_organ_classes.json
  def create
    @system_organ_class = SystemOrganClass.new(system_organ_class_params)

    respond_to do |format|
      if @system_organ_class.save
        format.html { redirect_to @system_organ_class, notice: 'System organ class was successfully created.' }
        format.json { render :show, status: :created, location: @system_organ_class }
      else
        format.html { render :new }
        format.json { render json: @system_organ_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /system_organ_classes/1
  # PATCH/PUT /system_organ_classes/1.json
  def update
    respond_to do |format|
      if @system_organ_class.update(system_organ_class_params)
        format.html { redirect_to @system_organ_class, notice: 'System organ class was successfully updated.' }
        format.json { render :show, status: :ok, location: @system_organ_class }
      else
        format.html { render :edit }
        format.json { render json: @system_organ_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /system_organ_classes/1
  # DELETE /system_organ_classes/1.json
  def destroy
    @system_organ_class.destroy
    respond_to do |format|
      format.html { redirect_to system_organ_classes_url, notice: 'System organ class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_system_organ_class
      @system_organ_class = SystemOrganClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def system_organ_class_params
      params.require(:system_organ_class).permit(:soc_code)
    end
end
