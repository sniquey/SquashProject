require 'open-uri'
require 'mechanize'

class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy, :verify]

  def match_history
      @player = Player.find params[:id]
      @matches_first = Match.where('winner_id = ? OR loser_id = ?', @player.id, @player.id)
      @matches = []
      @matches = @matches_first.where(:winner_games.empty? == false)
      # @matches = @matches.sort_by(:date, value) { |match| match.date }
      # @matches = []
      # @matches_won = Match.where(:winner_id => @player.id)
      # @matches_lost = Match.where(:loser_id => @player.id)
      # @matches << @matches_won << @matches_lost
  end

  def verify
    @player.exists?
    redirect_to root_path
  else
    redirect_to '/error'
    # if @player.exists?
    #   p "Hi"
    # else
    #   p "no"
    # end
    
  end

  def create
  @player = Player.find player_params[:player_id]
  if @player
      @player.update player_params
      redirect_to root_path
    else
      render :new
    end
  end

  # GET /players
  # GET /players.json
  def index
    @players = Player.all
  end

  # GET /players/1
  # GET /players/1.json
  def show
    @player = Player.find params[:id]
    @clubs = Club.all
    @matches =[]
    @matches_first = Match.where('winner_id = ? OR loser_id = ?', @player.id, @player.id)
      @matches = @matches_first.where(:winner_games.nil? == false)



      # @matches = @matches.sort_by(:date, value) { |match| match.date }
      # @matches = []
      # @matches_won = Match.where(:winner_id => @player.id)
      # @matches_lost = Match.where(:loser_id => @player.id)
      # @matches << @matches_won << @matches_lost
  end

  def whatif
    @player = Player.find params[:id]
    @winner_name = params[:winner].to_s
    @winner = Player.find_by(:name => @winner_name)
    @loser_name = params[:loser].to_s
    @loser = Player.find_by(:name => @loser_name)
    if @loser
     @winner_matrix = @winner.matrix

    else
        @loser = Player.find_by(:id => 8898)
  @winner_matrix = @winner.matrix
    # @loser_player = Player.find_by[:name => @loser]
    # if @winner_player.any? && @loser_player.any?
    # #   @diff = @winner_player.matrix - @loser_player.matrix
    # #else
    # #  render "Error. You must enter valid player names."
    # end
   
    end 
    redirect_to @player
  end

  def whatif_results
  end


  # GET /players/new
  def new
    @player = Player.new
  end

  # GET /players/1/edit
  def edit
    @player = @current_player
  end

  # POST /players
  # POST /players.json
  # def create
  #   @player = Player.new(player_params)

  #   respond_to do |format|
  #     if @player.save
  #       format.html { redirect_to @player, notice: 'Player was successfully created.' }
  #       format.json { render :show, status: :created, location: @player }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @player.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    @player = @current_player
    @player.update player_params
    redirect_to player_path
    # respond_to do |format|
    #   if @player.update(player_params)
    #     format.html { redirect_to @player, notice: 'Player was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @player }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @player.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /players/1
  # DELETE /players/1.json
  # def destroy
  #   @player.destroy
  #   respond_to do |format|
  #     format.html { redirect_to players_url, notice: 'Player was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:name, :email, :avatar, :id, :player_num, :club_id, :password, :password_confirmation)
    end
end
