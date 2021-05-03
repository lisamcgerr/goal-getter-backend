class GoalsController < ApplicationController
    
    def index
        render json: Goal.all
    end

    def show
        goal = Goal.find_by(id: params[:id])
        render json: goal
    end

    def create
        goal = Goal.create(goal_params)
        if goal.valid?
            render json: goal
        else
            render json: { error: 'failed to create goal' }, status: :not_acceptable
        end
    end

    def update
        goal = Goal.find_by(id: params[:id])
        if goal.update(goal_params)
            render json: goal
        else 
            render json: { error: 'failed to update goal' }, status: :not_acceptable
        end 
    end 

    def destroy
        goal = Goal.find_by(id: params[:id])
        goal.destroy
        render json: {message: 'goal has been deleted'}
    end 
    
      private
    
    def goal_params
        params.require(:goal).permit(:description, :user_id)
    end  

end
