class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update]
  
    def index
      @menus = Menu.all
      @menu_date = Menu.all
    end
  
    def new
      @menu = Menu.new
    end
  
    def create
      @menu = Menu.new(menu_params)
      @menu.save
      redirect_to record_path(@menu)
    end
  
    def show
    end
  
    def edit
    end
  
    def update
      @menu.update(menu_params)
      redirect_to menu_path(@menu)
    end
  
    private
    def menu_params
      params.require(:menu).permit(:name, :total_distance, :ditail,)
    end
  
    def set_record
      @menu = menu.find(params[:id])
    end
  
  
  end
  