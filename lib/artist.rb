class Artist
    
    @@all=[]
    attr_accessor :name 
    def initialize(name)
        @name = name
        @@all << self  
    end

    def new_song(name,genre)
        song = Song.new(name,self,genre) 
        song.name= name
        song.genre= genre
        song 
    end

    def songs
        Song.all.select{|song|song.artist == self}
    end

    def self.all
        @@all
    end

    def genres
        songs.collect{|song|song.genre}
    end 
end
