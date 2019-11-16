class TeamsController < ApplicationController
  def index
      @teams = Team.all
    end

    def new
      @team = Team.new
    end

    def create
      @team = Team.new(team_params)
      @team.users << User.find(params[:team][:player_one])
      @team.users << User.find(params[:team][:player_two]) unless (params[:team][:player_two]).blank?
      if @team.save
        redirect_to teams_path
      else
        render 'new'
      end
    end

    def show
      @team = Team.find(params[:id])
    end

    def destroy
      @team = Team.find(params[:id])
      if @team.destroy
        redirect_to '/teams'
      else
        redirect_to '/teams'
      end
    end

    private

    def team_params
      params.require(:team).permit(:player_one, :player_two)
    end
end
