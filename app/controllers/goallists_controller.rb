class GoallistsController < ApplicationController
    before_action :authenticate, only: [:show]

    def create 
        list = Goallist.create(list_params)
        render json: list
    end

    def index 
        lists = Goallist.all 
        render json: lists
    end

    def show 
        list = Goallist.find(params[:id])
        if @user.id == list.user_id
            render json: list
        else render json: {errors: ["Not Authorized"]}, status: :unauthorized
        end
    end

    def destroy
        list = Goallist.find(params[:id])
        list.destroy
        render json: list
    end

    private

    def list_params
        params.require(:goallist).permit(:user_id, :title)
    end
end
