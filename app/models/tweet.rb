class Tweet < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
  has_many :comments

  def self.search(search)
    if seach != ""
      Tweet.where('text LIKE(?)', "%#{search}%")
    else
      TWeet.all
    end
  end
end
