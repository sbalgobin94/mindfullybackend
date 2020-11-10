class LogsController < ApplicationController
    def index
        @logs = Log.all
        render json: @logs
    end

    def show 
        @log = Log.find(params[:id])
        render json: @log
    end

    def create
        @log = Log.create(log_params)
        render json: @log
    end

    def update
        @log = Log.find(params[:id])
        @log.update(log_params)
        render json: @log
    end
    
    def destroy 
        @log = Log.find(params[:id])
        @log.destroy
        render json: Log.all
    end


    private

    def log_params
        params.require(:log).permit(:user_id, :mood_id, :date, :notes)
    end

end
