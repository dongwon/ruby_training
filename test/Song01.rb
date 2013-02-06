class Song
  @@plays = 0   #this is a class variable
  def initialize(name, artist, duration)
    @name = name
    @artist = name
    @duration = duration
    @plays = 0
  end
  
  def play
    @plays += 1
    @@plays += 1
    "this song: #@plays plays. total #@@plays plays."
  end
  
  attr_reader :name, :artist, :duration, :plays     #like a getter
  attr_writer :name, :artist, :duration, :plays     #like a setter
  
end

class SongList
  MAX_TIME = 5 * 60
  def SongList.is_too_long(song)
    return song.duration > MAX_TIME
  end
end

s1 = Song.new("song1","artist1",123)
s2 = Song.new("song2","atrist2",456)
puts s1.play()
puts s2.play()
puts s1.play()
puts s1.play()

puts SongList.is_too_long(s1)
puts SongList.is_too_long(s2)