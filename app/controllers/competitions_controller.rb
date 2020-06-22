class CompetitionsController < ApplicationController

  before_action :set_competiton, only: [:show, :edit, :update]
  
  def index
    @competitions = Competition.all
  end

  def new
    @competition = Competition.new
  end

  def create
    @competition = Competition.new(competition_params)
    @competition.save
    redirect_to competition_path(@competition)
  end

  def show
    @records = @competition.records.all
  end

  def edit
  end

  def update
    @competition.update(competition_params)
    redirect_to competition_path(@competition)
  end

  private
  def competition_params
    params.require(:competition).permit(:name, :summary)
  end

  def set_competiton
    @competition = Competition.find(params[:id])
  end
end
