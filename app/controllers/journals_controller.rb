class JournalsController < ApplicationController

    def create
        journal = Journal.create(journal_params)
        render json: journal
    end

    def destroy
        journal = Journal.find(params[:id])
        jorunal.destroy
        render json: journal
    end

    private

    def journal_params
        params.require(:journal).permit(:title, :user_id)
    end
end
