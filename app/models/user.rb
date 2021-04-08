class User < ApplicationRecord
    has_many :journals, dependent: :destroy

    def my_journals
        self.journals.map do |journal|
            [journal.id, journal.title]
        end
    end
end
