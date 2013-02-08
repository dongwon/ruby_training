#def fib_up_to(max)
#  i1, i2 = 1, 1
#  while i1 <= max
#    yield i1
#    i1, i2 = i2, i1 + i2
#  end
#end
#
#fib_up_to(1000) {|f| print f, " "}
#
#a = [1,2,3,4,5]
#a.each() {|x| print x}
#
#[1,2,3,4,5,6,7,8,9].find {|v| print v*v > 30, " "}
#puts ""
#[1,2,3,4,5,6,7,8,9].find {|v| print v}
#[1,2,3,4,5,6,7,8,9].each {|v| print v}
#puts a.find
#
#a = [1,2]
#b = 'cat'
#a.each() {|b| c = b * a[1]}   #블록 안에서는 define이 안되는듯..
#puts a
#puts b
#puts c



class File
  def File.open_and_process(*args)
    f = File.open(*args)
    yield f
    f.close()
  end
end

File.open_and_process("temp/testfile", "r") do |file|
  while line = file.gets
    puts line
  end
end













