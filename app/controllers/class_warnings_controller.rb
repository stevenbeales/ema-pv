class ClassWarningsController < ApplicationController
  before_action :set_class_warning, only: [:show, :edit, :update, :destroy]

  # GET /class_warnings
  # GET /class_warnings.json
  def index
    @class_warnings = ClassWarning.all
  end

  # GET /class_warnings/1
  # GET /class_warnings/1.json
  def show
  end

  # GET /class_warnings/new
  def new
    @class_warning = ClassWarning.new
  end

  # GET /class_warnings/1/edit
  def edit
  end

  # POST /class_warnings
  # POST /class_warnings.json
  def create
    @class_warning = ClassWarning.new(class_warning_params)

    respond_to do |format|
      if @class_warning.save
        format.html { redirect_to @class_warning, notice: 'Class warning was successfully created.' }
        format.json { render :show, status: :created, location: @class_warning }
      else
        format.html { render :new }
        format.json { render json: @class_warning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_warnings/1
  # PATCH/PUT /class_warnings/1.json
  def update
    respond_to do |format|
      if @class_warning.update(class_warning_params)
        format.html { redirect_to @class_warning, notice: 'Class warning was successfully updated.' }
        format.json { render :show, status: :ok, location: @class_warning }
      else
        format.html { render :edit }
        format.json { render json: @class_warning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_warnings/1
  # DELETE /class_warnings/1.json
  def destroy
    @class_warning.destroy
    respond_to do |format|
      format.html { redirect_to class_warnings_url, notice: 'Class warning was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_warning
      @class_warning = ClassWarning.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_warning_params
      params.require(:class_warning).permit(:code)
    end
end
