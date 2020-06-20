class RecordsController < ApplicationController
before_action :set_record, only: [:show, :edit, :update]

  def index
    @records = Record.all
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(recode_params)
    @record.save
    redirect_to record_path(@record)
  end

  def show
  end

  def edit
  end

  def update
    @record.update
    redirect_to record_path(@record)
  end

  private
  def recode_params
    params.require(:record).permit(:name, :competition_id, :total_time,)
  end

  def set_record
    @record = Record.find(params[:id])
  end


end
