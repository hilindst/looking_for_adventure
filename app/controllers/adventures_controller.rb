class AdventuresController < ApplicationController
  # before_action :set_adventure, only: %i[ show edit update destroy ]

  # GET /adventures or /adventures.json
  def index
    adventures = Adventure.all
    
    render json: adventures
  end

  # GET /adventures/1 or /adventures/1.json
  def show
    adventure = Adventure.find(params[:id])
    render json: adventure
  end

  # GET /adventures/new
  # def new
  #   @adventure = Adventure.new
  # end

  # # GET /adventures/1/edit
  # def edit
  # end

  # POST /adventures or /adventures.json
  def create
    adventure = Adventure.new(adventure_params)

    if adventure.save
      render json: adventure, status: :created
    else render json: adventure.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /adventures/1 or /adventures/1.json
  def update
    adventure = Adventure.find(params[:id])
    adventure.update(adventure_params)

    render json: adventure, status: :update
  end

  # DELETE /adventures/1 or /adventures/1.json
  def destroy
    adventure = Adventure.find(params[:id])
    adventure.destroy
    render json: adventure, status: :destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adventure
      @adventure = Adventure.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def adventure_params
      params.require(:adventure).permit(:title, :ruleset, :description, :status, :type, :setting, :player_id)
    end
end
