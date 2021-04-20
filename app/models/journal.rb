class Journal < ApplicationRecord
  belongs_to :user
  has_many :entries, dependent: :destroy
  has_many :guests

  def entrycount
    self.entries.length
  end

  def myguests
    self.guests.map(&:user_id)
  end
end
