class Song
  
  def initialize(name, artist, duration)    #like a constructor
    @name = name            #instance variable
    @artist = artist        #instance variable
    @duration = duration    #instance variable
  end
  def to_s
    "Song: #@name--#@artist (#@duration)"
  end
  
  attr_reader :name, :artist, :duration     #like a getter
  attr_writer :name, :artist, :duration     #like a setter
end

song = Song.new("cho","jazz",300)

puts song.to_s()
song.name=("wow")
song.artist=("dongwon")
song.duration=(400)
puts song.to_s()

