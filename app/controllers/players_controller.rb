class PlayersController < ApplicationController
  before_action :authenticate_request, except: [:create]

  # GET /players or /players.json
  def index
    players = Player.all
    render json: PlayerBlueprint.render(players, view: :normal)
  end

  # GET /players/1 or /players/1.json
  def show
    player = Player.find_by(id: params[:id])
    render json: PlayerBlueprint.render(player, view: :normal), status: :ok
  end

  # # GET /players/new
  # def new
  #   @player = Player.new
  # end

  # # GET /players/1/edit
  # def edit
  # end

  # POST /players or /players.json
  def create
    player = Player.new(player_params)

    if player.save 
        render json: PlayerBlueprint.render(player, view: :normal), status: :created
    else 
        render json: player.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /players/1 or /players/1.json
  def update
    player = Player.find(params[:id])
    player.update(player_params)

    render json: player, status: :ok
  end

  # DELETE /players/1 or /players/1.json
  def destroy
    player = Player. find(params[:id])
    player.destroy
    render json: player, status: :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def player_params
      params.require(:player).permit(:username, :password, :email, :profile)
    end
end
