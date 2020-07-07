class Song
    
    @@count = 0 #tracking the number of new songs created from the Song class
    @@genres = [] #genre attribute of each new instance/song
    @@artists = [] #artist attribute of each new instance/song

    attr_accessor :name, :artist, :genre

    def initialize name, artist, genre
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1 
        @@genres << @genre #shovel genre attribute of each new song into array
        @@artists << @artist #shovel artist attribute of each new song into array 
    end

    def self.count
        #returns the total number of songs created
        @@count 
    end

    def self.genres
        #returns an array of all of the genres of existing songs, without duplicates
        @@genres.uniq 
    end

    def self.artists
        #returns an array of all of the artists of the existing songs, without duplicates
        @@artists.uniq
    end

    def self.genre_count
        #returns a hash in which the keys are the names of each genre
        #value is the number of songs that have that genre
        genre_count = {}

        @@genres.each do |genre|
          if genre_count[genre]  
            genre_count[genre] += 1
          else
            genre_count[genre] = 1
          end
        end
        genre_count
    end
    
    def self.artist_count
        #returns a hash in which the keys are the names of each artist
        #value is the number of songs that have that artist
        artist_count = {}

        @@artists.each do |artist|
          if artist_count[artist]  
            artist_count[artist] += 1
          else
            artist_count[artist] = 1
          end
        end
        artist_count
    end
end

=begin
This manner of displaying numerical data is called a histogram. 
How will you create your histogram? 
You will need to iterate over the @@genres array and populate a hash with the key/value pairs. 
You will need to check to see if the hash already contains a key of a particular genre. 
If so, increment the value of that key by one, otherwise, create a new key/value pair.
=end