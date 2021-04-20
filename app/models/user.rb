class User < ApplicationRecord
    has_many :journals, dependent: :destroy
    has_many :entries, through: :journals
    has_many :goallists
    has_many :guests
    has_secure_password
    validates :username, presence: true, uniqueness: { case_sensitive: false }
    

    def my_journals
        self.journals.map do |journal|
            [journal.id, journal.title]
        end
    end

    def my_entries
        self.entries.map do |entry|
            {id: Journal.find(entry.journal_id).entries.find_index(entry) + 1, title: entry.title, date: entry.created_at, journal: entry.journal_id }
        end
    end

    def guest_journals
        self.guests.map do |guest|
            [guest[:journal_id], Journal.find(guest[:journal_id]).title, User.find(Journal.find(guest[:journal_id]).user_id).name]
        end
    end
end
