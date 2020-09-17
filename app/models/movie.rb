class Movie < ApplicationRecord
    accepts_nested_attributes_for :main_actors
    
    validates :title, presence: true
    validates :year, presence: true, numericality: { greater_than_or_equal_to: 1888}
    validates :runTime, presence: true, numericality: { greater_than: 0 }
    
    validates :genre, inclusion: { in: ['Action', 'Comedy', 'Drama', 'Fantasy', 'Horror', 'Musical', 'Romance'], 
    message: "%{value} is not a valid genre" }
    validates :rating, inclusion: { in: ['G', 'PG', 'PG-13', 'R', 'NC-17'], 
        message: "%{value} is not a valid rating" }

end
