class GuestsController < ApplicationController

    before_action :authenticate, only: [:create]

    def create
        guest_user = User.find_by(code: params[:code])
        if (guest_user && guest_user.id != @user.id) && (!Guest.find_by(journal_id: params[:journal_id], user_id: guest_user.id))
            guest = Guest.new(guest_params)
            guest[:user_id] = guest_user.id
            guest.save
            render json: guest
        else
            
            render json: {errors: ["User Code does not exist or User already has access to journal"]}, status: :bad_request
        end
    end

    private

    def guest_params
        params.require(:guest).permit(:code, :journal_id)
    end
end
