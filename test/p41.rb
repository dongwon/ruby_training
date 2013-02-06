class Song
  
  def initialize(name, artist, duration)    #like a constructor
    @name = name            #instance value
    @artist = artist        #instance value
    @duration = duration    #instance value
  end
  def to_s
    "Song: #@name--#@artist (#@duration)"
  end
  
  def name
    @name
  end
  def artist
    @artist
  end
  def duration
    @duration
  end
  def duration=(new_duration)   #new syntax
    @duration = new_duration
  end
end

song = Song.new("bicylops","fleck",260)
puts song.duration
song.duration = 300
puts song.duration