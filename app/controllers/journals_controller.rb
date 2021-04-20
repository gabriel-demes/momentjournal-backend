class JournalsController < ApplicationController

    before_action :authenticate, only: [:show]

    def create
        journal = Journal.create(journal_params)
        Entry.create(title: "Welcome to your new MomentJournal", body: "This is your new MomentJournal \n Inorder to add a page/entry, click the plus(+) symbol at the bottom of your page. \n To flip through pages, you can either drag the page from the corner, or use the arrow buttons at the bottom of the page. \n To edit entries, click on the body of that entry. You can begin typing to change the body or the title. \n Once you are finished with an entry, you can choose to save it by clicking the save button. \n You can delete an entry by click the delete button when editing the entry. \n If you edit the entry but realize that you would not like to save the changes, you can click the cancel button. \n MomentJournal entries can be made by using voice commands. To Journal using your voice, click on the the body, then click the Start button. \n The following Commands can be used: \n 1) 'Journal Stop Listening' - This stops your MomentJournal from recording. \n 2) 'Journal title is _____' - This changes the title of your journal. \n 3) 'Jounral save Entry' - This saves your journal entry and any changes that you made. \n 'Journal language is _____' - This changes the langauge that your MomentJournal will be listening for. \n \t **Currently MomentJouranl supports these langauges: Arabic, Bulgarian, Cantonese, Catalan, Czech, Dutch, English, French, Greek, Italian, Japanese, Korean, Mandarin, Polish, Russian, Spanish, Turkish \n \t ** Please note that when you switch languages, voice commands can no longer be used to control your MomentJournal. \n", journal_id: journal.id)
        render json: journal
    end
    
    def show
        # byebug
        journal = Journal.find(params[:id])
        if @user.id == journal.user_id || journal.guests.map(&:user_id).include?(@user.id)
            render json: journal
        else render json: {errors: ["Not Authorized"]}, status: :unauthorized
        end
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
