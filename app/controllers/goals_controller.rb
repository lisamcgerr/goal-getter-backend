class GoalsController < ApplicationController
    
    def index
        render json: Goal.all
    end

    def show
        goal = Goal.find_by(id: params[:id])
        render json: goal
    end
    
end
