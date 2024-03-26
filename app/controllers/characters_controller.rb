class CharactersController < ApplicationController
  # before_action :set_character, only: %i[ show edit update destroy ]
  before_action :authenticate_request
  # GET /characters or /characters.json
  def index
    characters = Character.all
    render json: CharacterBlueprint.render(characters, view: :normal)
  end

  # GET /characters/1 or /characters/1.json
  def show
    character = Character.find(params[:id])
    render json: character
  end

  # GET /characters/new
  # def new
  #   @character = Character.new
  # end

  # GET /characters/1/edit
  # def edit
  # end

  # POST /characters or /characters.json
  def create
    character = @current_player.characters.new(character_params)
    if character.save
      render json: CharacterBlueprint.render(character, view: :normal), status: :created
    else render json: character.errors, status: :unprocessable_entity
    end
  end


  # PATCH/PUT /characters/1 or /characters/1.json
  def update
    character = Character.find(params[:id])
    character.update(character_params)

    render json: character, status: :update
  end

  # DELETE /characters/1 or /characters/1.json
  def destroy
    character = Character.find(params[:id])
    character.destroy, status: :destroy

    render json: character
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def character_params
      params.require(:character).permit(:name, :race, :char_class, :alignment, :level, :background, :gender, :bio, :player_id, adventure_ids: [])
    end
end
