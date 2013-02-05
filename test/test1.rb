#def say_goodnight(name)
#  result="Good night, #{name.capitalize()}"
#  return result
#end
#
#puts say_goodnight("dongwon!")
#puts say_goodnight("cho")

#$greeting = "hello"    # $gretting은 전역변수
#@name = "dongwon"      # @name은 인스턴스 변수
#
#puts "#$greeting, #@name"
#
#def greeting(name)
#  "hi, #{name}"
#end
#puts greeting("dongwon")

#mySection = {
#  '첼로'  =>  '현악기',
#    '클라리넷'  =>  '관악기',
#    '드럼'  =>  '타악기'
#}
#
#puts mySection['첼로']

count = 20
tries = 3

if count < 10
  puts "try again"
elsif tries == 3
  puts "you lose"
else
  puts "enter a number"
end


while line = gets
  puts line.downcase
end



