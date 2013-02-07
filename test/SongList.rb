class Song
#  @@plays = 0   #this is a class variable
  def initialize(name, artist, duration)
    @name = name
    @artist = name
    @duration = duration
#    @plays = 0
  end
  
#  def play
#    @plays += 1
#    @@plays += 1
#    "this song: #@plays plays. total #@@plays plays."
#  end
  
  attr_reader :name, :artist, :duration#, :plays     #like a getter
  attr_writer :name, :artist, :duration#, :plays     #like a setter
  
end

class SongList
  
  def initialize
    @songs = Array.new
  end
  
  def append(song)
    @songs.push(song)
    self
  end
  
  def delete_first
    @songs.shift
  end
  
  def delete_last
    @songs.pop
  end
  
  def [](index)
    @songs[index]
  end
  
  def with_title(title)
    @songs.find {|song| title == song.name()}   #find 메소드의 결과를 song에 담아 title과 비교
  end
  
end


require 'test/unit'
class TestSongList < Test::Unit::TestCase
  def test_delete
    list = SongList.new
    s1 = Song.new('title1','artist1',1)
    s2 = Song.new('title2','artist2',2)
    s3 = Song.new('title3','artist3',3)
    s4 = Song.new('title4','artist4',4)
    
    list.append(s1).append(s2).append(s3).append(s4)
    
    assert_equal(s1, list[0])
    assert_equal(s3, list[2])
    assert_nil(list[9])
        
    assert_equal(s1, list.delete_first())
    assert_equal(s2, list.delete_first())
    assert_equal(s3, list.delete_last())
    assert_equal(s4, list.delete_last())
    assert_nil(list.delete_last())
  end
end

