require "google/cloud/language"

class EntriesController < ApplicationController
    
    def create
        entry = Entry.create(entry_params)
        render json: entry
    end

    def show
        entry = Entry.find(params[:id])
        render json: entry
    end

    def sentiment
        entry = Entry.find(params[:id])
        text_content = params[:entrybody]
        language = Google::Cloud::Language.language_service
        document = { content: text_content, type: :PLAIN_TEXT }
        response = language.analyze_sentiment document: document
        sentiment = response.document_sentiment
        entry.update(sentiment: sentiment.score)
        render json: sentiment.score
    end

    def update
        entry = Entry.find(params[:id])
        entry.update(body: params[:body], title: params[:title])
        render json: entry
    end

    def destroy
        entry = Entry.find(params[:id])
        entry.destroy
        render json: entry
    end

    private
    def entry_params
        params.require(:entry).permit(:journal_id, :title, :body, :sentiment)
    end
end
