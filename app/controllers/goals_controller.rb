class GoalsController < ApplicationController
    def index
        @goals = Goal.all
        render json: @goals
    end

    def show 
        @goal = Goal.find(params[:id])
        render json: @goal
    end

    def create
        @goal = Goal.create(goal_params)
        render json: @goal
    end

    def update
        @goal = Goal.find(params[:id])
        @goal.update(goal_params)
        render json: @goal
    end
    
    def destroy 
        @goal = Goal.find(params[:id])
        @goal.destroy
        render json: Goal.all
    end


    private

    def goal_params
        params.require(:goal).permit(:user_id, :name, :status)
    end
end
