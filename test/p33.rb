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
end

class KaraokeSong < Song
  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration)
    @lyrics = lyrics
  end
  def to_s
    super + " [#@lyrics]"
  end
end

#song = KaraokeSong.new("bicylops","Fleck",260,"and now, the ...")
song = Song.new("bicylops","Fleck",260)
puts song.name()
puts song.artist()
puts song.duration()
#puts song.inspect()   #like a tostring
#puts song.to_s()


