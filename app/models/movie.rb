class Movie < ApplicationRecord

    # attr_accessor :title, :genre, :year, :runTime, :rating, :mainActors
    
    validates :title, presence: true
    validates :year, presence: true
    validates :runTime, presence: true
    
    validates :genre, inclusion: { in: ['Action', 'Comedy', 'Drama', 'Fantasy', 'Horror', 'Musical', 'Romance'], 
    message: "%{value} is not a valid genre" }
    validates :rating, inclusion: { in: ['G', 'PG', 'PG-13', 'R', 'NC-17'], 
        message: "%{value} is not a valid rating" }
    
    

end
