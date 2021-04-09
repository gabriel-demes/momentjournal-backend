class JournalsController < ApplicationController

    def create
        journal = Journal.create(journal_params)
        Entry.create(title: "title", body: "body", journal_id: journal.id)
        render json: journal
    end
    
    def show
        journal = Journal.find(params[:id])
        render json: journal
    end

    def destroy
        journal = Journal.find(params[:id])
        journal.destroy
        render json: journal
    end

    private

    def journal_params
        params.require(:journal).permit(:title, :user_id)
    end
end
