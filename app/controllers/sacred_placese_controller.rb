class SacredPlaceseController < ApplicationController
    def index
        @sacred = SacredPlace.all
    end
    
    def show
        #@sacred = SacredPlace.find(params[:id])
    end
    
    def new
        @sacred = SacredPlace.new
    end
    
    def create
        @sacred = SacredPlacese.new(sacred_params)
        @sacred.user_id = current_user.id
        @sacred.save
        redirect_to sacred_plase_index_path(@sacred)
    end
    
    private
    
    def sacred_params
        params.require(:sacred_place).permit(:image,:title,:contents)
    end
end
