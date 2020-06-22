class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update]
  
    def index
      @menus = Menu.all
      @menu_date = Menu.all
    end
  
    def new
      @menu = Menu.new
    end
    require 'pry'
    def create
      @menu = Menu.new(menu_params)
      binding.pry
      @menu.save
      redirect_to menus_path
    end
  
    def show
    end
  
    def edit
    end
  
    def update
      @menu.update(menu_params)
      redirect_to menus_path
    end
  
    private
    def menu_params
      params.require(:menu).permit(:name, :detail, :total_distance, :image)
    end
  
    def set_menu
      @menu = Menu.find(params[:id])
    end
  
  
  end
  