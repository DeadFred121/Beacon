class FlaresController < ApplicationController
  include SearchFormLookups
  before_action :set_flare, only: %i[show edit update destroy]
  before_action :user_check, only: %i[update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  # GET /flares
  # GET /flares.json
  def index
    if params.key?(:region_id) && params.key?(:platform_id)
      @flares = Flare.where(region_id: params[:region_id], platform_id: params[:platform_id])
    else
      @flares = Flare.all
    end
  end

  # GET /flares/1
  # GET /flares/1.json
  def show; end

  # GET /flares/new
  def new
    @flare = Flare.new
  end

  # GET /flares/1/edit
  def edit; end

  # POST /flares
  # POST /flares.json
  def create
    @flare = Flare.new(flare_params)
    @flare.user = current_user

    respond_to do |format|
      if @flare.save
        format.html { redirect_to @flare, notice: 'Flare was successfully created.' }
        format.json { render :show, status: :created, location: @flare }
      else
        format.html { render :new }
        format.json { render json: @flare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flares/1
  # PATCH/PUT /flares/1.json

  def update
    respond_to do |format|
      if @flare.update(flare_params)
        format.html { redirect_to @flare, notice: 'Flare was successfully updated.' }
        format.json { render :show, status: :ok, location: @flare }
      else
        format.html { render :edit }
        format.json { render json: @flare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flares/1
  # DELETE /flares/1.json
  def destroy
    @flare.destroy
    respond_to do |format|
      format.html { redirect_to flares_url, notice: 'Flare was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_flare
    @flare = Flare.find(params[:id])
  end

  def user_check
    render json: {}, status: 401 if @flare.user != current_user
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def flare_params
    params.require(:flare).permit(:user_id, :region_id, :platform_id, :game, :description)
  end
end
