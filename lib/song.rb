class Song

    attr_accessor :name, :artist, :genre

    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize name, artist, genre
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
    end

    def self.all
        @@all
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        hash = {}
        @@genres.each do |key|
            hash[key] ? hash[key] += 1 : hash[key] = 1
        end
        hash
    end

    def self.artist_count
        hash = {}
        @@artists.each do |key|
            hash[key] ? hash[key] += 1 : hash[key] = 1
        end
        hash
    end

end