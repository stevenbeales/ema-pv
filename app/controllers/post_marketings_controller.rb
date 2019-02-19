class PostMarketingsController < ApplicationController
  before_action :set_post_marketing, only: [:show, :edit, :update, :destroy]

  # GET /post_marketings
  # GET /post_marketings.json
  def index
    @post_marketings = PostMarketing.all
  end

  # GET /post_marketings/1
  # GET /post_marketings/1.json
  def show
  end

  # GET /post_marketings/new
  def new
    @post_marketing = PostMarketing.new
  end

  # GET /post_marketings/1/edit
  def edit
  end

  # POST /post_marketings
  # POST /post_marketings.json
  def create
    @post_marketing = PostMarketing.new(post_marketing_params)

    respond_to do |format|
      if @post_marketing.save
        format.html { redirect_to @post_marketing, notice: 'Post marketing was successfully created.' }
        format.json { render :show, status: :created, location: @post_marketing }
      else
        format.html { render :new }
        format.json { render json: @post_marketing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_marketings/1
  # PATCH/PUT /post_marketings/1.json
  def update
    respond_to do |format|
      if @post_marketing.update(post_marketing_params)
        format.html { redirect_to @post_marketing, notice: 'Post marketing was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_marketing }
      else
        format.html { render :edit }
        format.json { render json: @post_marketing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_marketings/1
  # DELETE /post_marketings/1.json
  def destroy
    @post_marketing.destroy
    respond_to do |format|
      format.html { redirect_to post_marketings_url, notice: 'Post marketing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_marketing
      @post_marketing = PostMarketing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_marketing_params
      params.require(:post_marketing).permit(:code)
    end
end
