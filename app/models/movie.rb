class Movie < ApplicationRecord
  # add presence validation for name, synopsis and director
    validates :name, :synopsis, :director, presence: true
end
