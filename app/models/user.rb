class User < ApplicationRecord
    has_many :journals, dependent: :destroy
    has_many :entries, through: :journals
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
end
