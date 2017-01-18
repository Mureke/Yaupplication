class IntrotextsController < ApplicationController
  before_action :set_introtext, only: [:show, :edit, :update, :destroy]

  # GET /introtexts
  # GET /introtexts.json
  def index
    @introtexts = Introtext.all
  end

  # GET /introtexts/1
  # GET /introtexts/1.json
  def show
  end

  # GET /introtexts/new
  def new
    @introtext = Introtext.new
  end

  # GET /introtexts/1/edit
  def edit
  end

  # POST /introtexts
  # POST /introtexts.json
  def create
    @introtext = Introtext.new(introtext_params)

    respond_to do |format|
      if @introtext.save
        format.html { redirect_to @introtext, notice: 'Introtext was successfully created.' }
        format.json { render :show, status: :created, location: @introtext }
      else
        format.html { render :new }
        format.json { render json: @introtext.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /introtexts/1
  # PATCH/PUT /introtexts/1.json
  def update
    respond_to do |format|
      if @introtext.update(introtext_params)
        format.html { redirect_to @introtext, notice: 'Introtext was successfully updated.' }
        format.json { render :show, status: :ok, location: @introtext }
      else
        format.html { render :edit }
        format.json { render json: @introtext.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /introtexts/1
  # DELETE /introtexts/1.json
  def destroy
    @introtext.destroy
    respond_to do |format|
      format.html { redirect_to introtexts_url, notice: 'Introtext was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_introtext
      @introtext = Introtext.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def introtext_params
      params.require(:introtext).permit(:text, :startdate, :enddate)
    end
end
