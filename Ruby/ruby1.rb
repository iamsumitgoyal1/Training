
Practice Basic Concepts:

beryl@beryl-To-be-filled-by-O-E-M:~$ irb
2.7.0 :001 > puts "Hello"
 => nil 
3+4
2.7.0 :003 > puts "#{3+4}"
7
 => nil 
2.7.0 :004 > print 3+4
7 => nil 
2.7.0 :005 > a=5
2.7.0 :006 > b=2
2.7.0 :007 > c=a**b

2.7.0 :010 > print "value of c is = ",c
value of c is = 25 => nil 
2.7.0 :011 > puts "#{a%b}"
1
 => nil 
2.7.0 :012 > c.class
 => Integer 
2.7.0 :017"> print <<EOF
2.7.0 :018"> Hii This is Sumit
2.7.0 :019"> Hello this is Ishant
2.7.0 :020 > EOF
Hii This is Sumit
Hello this is Ishant
 => nil 
2.7.0 :021 > BEGIN {
2.7.0 :022 >   puts "This is very beginning" }
This is very beginning
 => nil 

END{"End of the class"}  
BEGIN{puts "Stating of class"} #This executes first
puts "Body of class"


beryl@beryl-To-be-filled-by-O-E-M:~$ ruby ruby.rb
Stating of class
Body of class

Practice Variables:

2.6.0 :001 > class Phone
2.6.0 :002?>   @@phone_type='Android'
2.6.0 :003?>   def ram
2.6.0 :004?>     puts "Its ram is 4gb"
2.6.0 :005?>     end
2.6.0 :006?>   end
 => :ram 
2.6.0 :007 > ob=Phone.new
 => #<Phone:0x000055c1f6ac83f8> 
2.6.0 :008 > ob.ram
Its ram is 4gb
 => nil 
2.6.0 :002 > class Office
2.6.0 :003?>   def initialize(id,did,name)
2.6.0 :004?>     @id=id
2.6.0 :005?>     @did=did
2.6.0 :006?>     @name=name
2.6.0 :007?>     end
2.6.0 :008?>   def show
2.6.0 :009?>     puts "id=#{@id}  did=#{@did} name=#{@name}"
2.6.0 :010?>     end
2.6.0 :011?>   end
 => :show 
2.6.0 :012 > ob1=Office.new("1","101","Sumit")
 => #<Office:0x000055a06d9086f8 @id="1", @did="101", @name="Sumit"> 
2.6.0 :014 > ob2=Office.new("2","101","Sahil")
 => #<Office:0x000055a06d973958 @id="2", @did="101", @name="Sahil"> 
2.6.0 :015 > ob1.show
id=1  did=101 name=Sumit
 => nil 
2.6.0 :016 > ob2.show
id=2  did=101 name=Sahil
 => nil 


Practice loops:

2.6.0 :001 > for i in 0..10
2.6.0 :002?>   puts "hello"
2.6.0 :003?>   end
hello
hello
hello
hello
hello
hello
hello
hello
hello
hello
hello

2.6.0 :007 > (0..5).each do |i|
2.6.0 :008 >     puts "#{i}"
2.6.0 :009?>   end
0
1
2
3
4
5

Practice Blocks:
 => 0..5 
2.6.0 :010 > def hello
2.6.0 :011?>   yield 5
2.6.0 :012?>   puts "hii"
2.6.0 :013?>   yield 100
2.6.0 :014?>   end
 => :hello 
2.6.0 :015 > hello {|i| puts"hello G #{i}"}
hello G 5
hii
hello G 100







#If-Else,Elsif,unless


a,b=10,5
if a < b
  puts "#{a} is less than #{b}"
 elsif a==b
 	puts"#{a} is equal to #{b}"
else
 	puts "#{b} is less than #{a}"
 end
 	
Ans: beryl@beryl-To-be-filled-by-O-E-M:~/Desktop/Training/Ruby$ ruby ruby1.rb
5 is less than 10


x=11
unless x>2
	puts "X is less than 3"
else 
	puts "X is more than 2"
end

beryl@beryl-To-be-filled-by-O-E-M:~/Desktop/Training/Ruby$ ruby ruby1.rb
X is more than 2



#case

age = 25
case age
 when 0..2
 	puts "Baby"
 when 3..7
 	puts "little child"
 when 8..12
 	puts "Child"
 when 13..17
 	puts "Youth"
 else
 	puts "Adult"
 end


print 1.respond_to?("even")
puts "#{1.respond_to?("even?")}"

beryl@beryl-To-be-filled-by-O-E-M:~/Desktop/Training/Ruby$ ruby ruby1.rb
falsetrue

Practice Defined etc:
c=5
print defined?(c)

beryl@beryl-To-be-filled-by-O-E-M:~/Desktop/Training/Ruby$ ruby ruby1.rb
local-variable


n=1
while n<=10
	puts "#{n}"
	n+=1
end


1
2
3
4
5
6
7
8
9
10


n=1
begin
	puts "#{n}"
	n+=1
end until n<10 and n!=1


1


if ((1..10) === 4)
   puts "4 lies in (1..10)"
end

if (('a'..'j') === 'b')
   puts "b lies in ('a'..'j')"
end

if (('a'..'j') === 'z')
   puts "z lies in ('a'..'j')"
end

4 lies in (1..10)
b lies in ('a'..'j')


score = 90

result = case score
   when 0..40 then "Fail"
   when 41..60 then "Pass"
   when 61..70 then "Pass with Merit"
   when 71..100 then "Pass with Distinction"
   else "Invalid Score"
end

puts result

Pass with Distinction


2.6.0 :016 > d=  ["a",5]
 => ["a", 5] 
2.6.0 :017 > print d
["a", 5] => nil 
2.6.0 :018 > puts "#{d}"
["a", 5]
 => nil 
2.6.0 :019 > puts d
a
5


2.6.0 :020 > H = Hash["a" => 100, "b" => 200]
 => {"a"=>50, "b"=>1200} 

2.6.0 :024 > puts "#{H['a']}"
50
 

Time and Date:

2.6.0 :018 > t=Time.new
 => 2020-01-21 17:10:53 +0530 
2.6.0 :019 > puts t
2020-01-21 17:10:53 +0530
 => nil 
2.6.0 :020 > t=Time.now
 => 2020-01-21 17:11:10 +0530 

2.6.0 :022 > puts "Current Time= "+t.inspect
Current Time= 2020-01-21 17:11:10 +0530
 => nil 
2.6.0 :026 > time=Time.new
 => 2020-01-21 17:15:50 +0530 
2.6.0 :027 > puts time.year
2020
 => nil 
2.6.0 :028 > puts time.day
21
 => nil 
2.6.0 :029 > puts time.wday
2
 => nil 

2.6.0 :031 > puts time.hour
17
 => nil 
2.6.0 :032 > puts time.sec
50
 => nil 

Setter nd Getter nd Iterators

class Animal
#setter
attr_writer:name,:age
#getter
attr_reader:name,:age

end
 f=Animal.new
 f.name="Cat"
 f.age="12"
 puts f.name
 puts f.age

 or

class Animal
#setter nd getter
attr_accessor:name,:age

end
 f=Animal.new
 f.name="Cat"
 f.age="12"
 puts f.name
 puts f.age

output:
Cat
12

2.6.0 :033 > puts time.yday
21

2.7.0 :001 > 5.times do puts "hey" end
hey
hey
hey
hey
 => 5 
2.7.0 :002 > 5.times {puts "hey"}
hey
hey
hey
hey
 => 5 
2.7.0 :003 > 5.upto(8) {puts "hey"}
hey
hey
hey
 => 5 
2.7.0 :004 > 5.downto(8) {|i|puts "hey #{i}"}
 => 5 
2.7.0 :005 > 5.downto(8) {|i| puts "hey #{i}"}
 => 5 
2.7.0 :006 > 12.downto(8) {|i| puts "hey #{i}"}
hey 12
hey 11
hey 10
hey 9
hey 8
 => 12 
2.7.0 :007 > 0.step(5) {|i| puts "hey #{i}"}
hey 0
hey 1
hey 2
hey 3
hey 4
hey 5
 => 0 
2.7.0 :008 > 0.step(25,5) {|i| puts "hey #{i}"}
hey 0
hey 5
hey 10
hey 15
hey 20
hey 25

Module,Require,Include Practice

module Mat
	A,B=0,1
def Mat.sf(x)
	puts Math.sin(x).round(2)
end

def Mat.cf(x)
	puts "#{(Math.cos(x)).round(2)}"
end
end
puts Mat::A 
Mat.sf(Mat::B)

0
0.84


require_relative "rr1.rb"

puts Mat::B 

0
0.84
1


require_relative "rr1.rb"

class Abc 

  include Mat	
    def m
     puts Mat::B 
    end
end

a=Abc.new
puts a.m

1

Array Methods

2.7.0 :045 > a=[1,2,3,4,"f","g"]
2.7.0 :046 > a.class
 => Array 
 => 6 
2.7.0 :048 > a.size
2.7.0 :049 > puts a.reverse
g
4
3
2
1
 => nil 
2.7.0 :050 > puts a.inspect
 => nil 
2.7.0 :051 > puts a
1
2
3
4
f
g
2.7.0 :052 > puts a.empty?
false
 => nil 
2.7.0 :053 > puts a.shift
1
 => nil 
2.7.0 :054 > puts a
4
f
 => nil 

2.7.0 :056 > puts a<<5
2
3
4
f
g
5
 => nil 
2.7.0 :057 > b=["a",1,2,3]
2.7.0 :058 > puts a.equal?b
false
 => nil 

2.7.0 :064 > puts a.index(3)
1


2.7.0 :065 > puts a.concat(b)
2
3
4
f
g
a
1
2
3
 => nil 
2.7.0 :066 > a.delete_at(3)
 => "f" 
2.7.0 :067 > puts a.concat(b)
2
3
4
g
5
a
2
3
a
1
2
 => nil 
2.7.0 :068 > puts a
2
3
4
g
5
1
2
3
a
1
2
 => nil 
2.7.0 :069 > puts b
a
1
2
3
 => nil 
2.7.0 :070 > puts a[0,6]
2
3
4
g
5
a
 => nil 
2.7.0 :071 > puts a[-5..-1]
3
a
1
2
3
 => nil 


2.7.0 :072 > puts a.index("a")
 => nil 
2.7.0 :073 > c=a&b
2.7.0 :074 > puts c
2
3
a
1
 => nil 
3
4
g
5
a
1
 => nil 
2.7.0 :076 > puts o=a-b
4
g
5
 => nil 
2.7.0 :077 > puts a.sort

2.7.0 :078 > c=[2,5,3,8]
2.7.0 :079 > puts c.sort
2
3
5
8



2-D Array
box=[]
2.7.0 :033 > 5.times do |row|
2.7.0 :034 >   box[row]=[]
2.7.0 :035 >   10.times do
2.7.0 :036 >     box[row]<<"*"
2.7.0 :037 >   end
2.7.0 :038 >   print "\n"
2.7.0 :039 > end





 => 5 
2.7.0 :040 > for row in box
2.7.0 :041 >     puts (row.inspect)
2.7.0 :042 > end
["*", "*", "*", "*", "*", "*", "*", "*", "*", "*"]
["*", "*", "*", "*", "*", "*", "*", "*", "*", "*"]
["*", "*", "*", "*", "*", "*", "*", "*", "*", "*"]
["*", "*", "*", "*", "*", "*", "*", "*", "*", "*"]
["*", "*", "*", "*", "*", "*", "*", "*", "*", "*"]


#Hashes
2.7.0 :080 > hash={1=>"Apple",2=>"Mango",}
2.7.0 :081 > puts hash
{1=>"Apple", 2=>"Mango"}
 => nil 
2.7.0 :082 > puts hash.inspect
 => nil 
2.7.0 :083 > puts hash.keys
1
2
 => nil 
Apple
Mango
 => nil 
2.7.0 :085 > puts hash.invert
{"Apple"=>1, "Mango"=>2}
 => nil 

2.7.0 :088 > hash.each {|x,y| puts "key : #{x}","value : #{y}" }
key : 1
value : Apple
key : 2
value : Mango

2.7.0 :138 > hash[1]="Apple"
2.7.0 :139 > hash[2]="Mango"
2.7.0 :140 > puts hash
{3=>"grapes", "w"=>"orange", 1=>"Apple", 2=>"Mango"}

2.7.0 :143 > puts hash.value?("2")
false
 => nil 
2.7.0 :144 > puts hash.key?("2")
false
 => nil 
2.7.0 :145 > puts hash.key?(2)
true
2.7.0 :150 > puts hash.values_at(1) 
Apple
2.7.0 :151 > puts hash.fetch(1) 
Apple

#Practice Rand

2.7.0 :154 > puts rand(10)
8
 => nil 
2.7.0 :155 > puts rand(0..5)
1
 => nil 
2.7.0 :156 > puts rand(0..5.8)
2.470413156251091

2.7.0 :152 > puts rand
0.47378437573791

2.7.0 :172 > puts (rand*10).to_i
2
 => nil 
2.7.0 :173 > puts (rand*10).round(2)
7.81
 => nil 

2.7.0 :174 > srand 0
 => 335369061521353846877657344054441804111 
2.7.0 :175 > puts rand 
0.5488135039273248
 => nil 
2.7.0 :176 > srand 0
 => 0 
2.7.0 :177 > puts rand 
0.5488135039273248
=>> nil 


#Inheritance

2.7.0 :013 > class Pa
2.7.0 :014 >   attr_accessor:name,:age
2.7.0 :015 > end
 => nil 
2.7.0 :016 > class Ca < Pa
2.7.0 :017 >   attr_accessor:cast
2.7.0 :018 > end
 => nil 
2.7.0 :019 > ob=Ca.new
2.7.0 :020 > ob.name="Sumit"
2.7.0 :021 > ob.age=20
2.7.0 :022 > ob.cast="Genera"
2.7.0 :023 > puts ob
#<Ca:0x00005639a518a968>
 => nil 
2.7.0 :024 > puts ob.inspect
#<Ca:0x00005639a518a968 @name="Sumit", @age=20, @cast="Genera">
 => nil 
2.7.0 :025 > puts ob.age
20
 => nil 

2.7.0 :059 > class Phones
2.7.0 :060 >   attr_accessor:color,:weight
2.7.0 :061 >   def initialize(x,y)
2.7.0 :062 >     @color=x
2.7.0 :063 >     @weight=y
2.7.0 :064 >   end
2.7.0 :065 > end

2.7.0 :043 > class Android < Phone
2.7.0 :044 >   def Ram(x)
2.7.0 :045 >     return x
2.7.0 :046 >   end

2.7.0 :066 > ob=Android.new("Black","167g")


2.7.0 :057 > ob.Ram(4)
 => 4 
2.7.0 :058 > ob.inspect
 => "#<Android:0x00005639a540c920 @color=\"Black\", @weight=\"167g\">" 
2.7.0 :067 > puts ob.color
Black
 => nil 
2.7.0 :068 > ob.color="Blue"
2.7.0 :069 > puts ob.color
Blue
 => nil 
2.7.0 :070 > ob.inspect
 => "#<Android:0x00005639a53b2380 @color=\"Blue\", @weight=\"167g\">" 

#Method Overriding
2.7.0 :092 > class Phones
2.7.0 :093 >   attr_accessor:color,:weight
2.7.0 :094 >   def initialize(x,y)
2.7.0 :099 >     puts "Parant class Ram: #{y}"
2.7.0 :100 >   end
2.7.0 :101 > end
 => :Ram 
2.7.0 :102 > class Android < Phones
2.7.0 :105 >   end
2.7.0 :106 > end
 => :Ram 
2.7.0 :109 > ob=Android.new("Red","256")

2.7.0 :111 > puts ob.Ram(5)
Child class Ram: 5

#Operator Overloading
2.7.0 :287 > class Animal
2.7.0 :288 >   attr_accessor:n,:t
2.7.0 :289 >   def initialize(x,y)
2.7.0 :290 >     @n=x
2.7.0 :291 >     @t=y
2.7.0 :292 >   end
2.7.0 :293 >   def +(o)
2.7.0 :294 >     return Animal.new("#{self.n} #{o.n})","#{self.t} #{o.t}")
2.7.0 :295 >   end
2.7.0 :296 > end
 => :+ 
2.7.0 :297 > class Cat < Animal
2.7.0 :298 > end
 => nil 
2.7.0 :299 > a=Cat.new("Sam",20)
2.7.0 :300 > puts a+b
#<Animal:0x00005639a53dd0a8>
 => nil 
2.7.0 :301 > puts (a+b).inspect
#<Animal:0x00005639a539caf8 @n="Sam Ham)", @t="20 10">
 => nil 

2.7.0 :303 > class M
2.7.0 :304 >   attr_accessor:l,:h
2.7.0 :305 >   def initialize(l,h)
2.7.0 :306 >     @l=l
2.7.0 :307 >     @h=h
2.7.0 :308 >   end
2.7.0 :309 > end
 => :initialize 
2.7.0 :310 > m=M.new(2,3)
2.7.0 :311 > puts m.l
2
 => nil 
2.7.0 :312 > puts m.h
3
 => nil 

2.7.0 :314 > m.freeze
 => #<M:0x00005639a53c6ad8 @l=2, @h=3> 
2.7.0 :315 > m.l=8
Traceback (most recent call last):
        4: from /home/beryl/.rvm/rubies/ruby-2.7.0/bin/irb:23:in `<main>'
        3: from /home/beryl/.rvm/rubies/ruby-2.7.0/bin/irb:23:in `load'
        2: from /home/beryl/.rvm/rubies/ruby-2.7.0/lib/ruby/gems/2.7.0/gems/irb-1.2.1/exe/irb:11:in `<top (required)>'
        1: from (irb):315
FrozenError (can't modify frozen M: #<M:0x00005639a53c6ad8 @l=2, @h=3>)
2.7.0 :316 > 

#Formatting Date and time
2.7.0 :351"> puts t.strftime("Year : %y
2.7.0 :352"> Month : %m
2.7.0 :353"> Day   : %d
2.7.0 :354"> Time  : %H:%M:%S %p
2.7.0 :355"> Time Zone :%z
2.7.0 :356">           
2.7.0 :357 > %A")

Year : 20
Month : 01
Day   : 24
Time  : 12:27:46 PM
Time Zone :+0530
          
Friday

#Strings

2.7.0 :358 > "Sumit".upcase
 => "SUMIT" 
2.7.0 :359 > "Sumit".downcase
 => "sumit" 
2.7.0 :360 > "Sumit".swapcase
 => "sUMIT" 
2.7.0 :361 > "Sumit".reverse.swapcase
 => "TIMUs" 
2.7.0 :362 > a="Sumit"
2.7.0 :363 > a.class
 => String 
2.7.0 :365 > a.length
 => 5 
2.7.0 :366 > a.size
 => 5 
2.7.0 :370 > str="Hello, This is Sumit Goyal"
2.7.0 :371 > str.split
 => ["Hello,", "This", "is", "Sumit", "Goyal"] 
2.7.0 :372 > str.capitalize
 => "Hello, this is sumit goyal" 
2.7.0 :373 > str.split("    ")
 => ["Hello, This is Sumit Goyal"] 
2.7.0 :374 > str.split("  vv  ")
 => ["Hello, This is Sumit Goyal"] 
2.7.0 :375 > str.empty?
 => false 
2.7.0 :376 > str.encoding
 => #<Encoding:UTF-8> 
2.7.0 :377 > str[1]
 => "e" 
2.7.0 :378 > age=12
2.7.0 :379 > "My #{age}"
 => "My 12" 
2.7.0 :380 > 'My #{age}'
 => "My \#{age}" 
2.7.0 :381 > puts 'My #{age}'
My #{age}
 => nil 
.0 :389 > "Hey!!!" + 3.to_s 
 => "Hey!!!3" 
2.7.0 :390 > "f  "*3
 => "f  f  f  " 
2.7.0 :391 > "hey " +self.to_s
 => "hey main" 
2.7.0 :393 > "abcdef"<=>"abc"
2.7.0 :394 > "abcdef"<=>"abcdefgh"
2.7.0 :395 > "abcdef"<=>"abcdef"
 => 1 
 => 1 
 => -1 
 => 1 
 => false 
 => false 
 => true 
2.7.0 :403 > "ab"=="bc"
 => false 
2.7.0 :404 > "a"==5
 => false 
2.7.0 :405 > "a"==65
 => false 
2.7.0 :406 > "a"==95
 => false 
2.7.0 :407 > a="Hello World"
2.7.0 :408 > a[2]
 => "l" 
2.7.0 :409 > a[2..6]
 => "llo W" 
2.7.0 :410 > a[1,6]
 => "ello W" 
2.7.0 :411 > a[1,6].size
 => 6 
2.7.0 :412 > a["ho"]
 => nil 
2.7.0 :413 > a["H"]
 => "H" 
2.7.0 :414 > a["H"].index
2.7.0 :417 > a.byteslice(5,8)
 => " World" 
2.7.0 :420 > a.casecmp"abcdefgh"
 => 1 
2.7.0 :421 > a.casecmp?"abcdefgh"
 => false 
2.7.0 :425 > "hello".center(14)
 => "    hello     " 
2.7.0 :429 > "Hello\n".chomp
 => "Hello" 
2.7.0 :430 > "Hello\r\n".chomp
 => "Hello" 
2.7.0 :431 > "Hello\n\n\r\n".chomp
 => "Hello\n\n" 
2.7.0 :432 > "Hello\n\n\r\n".chomp("llo")
 => "Hello\n\n\r\n" 
2.7.0 :433 > "Hello".chomp("llo")
 => "He" 
2.7.0 :434 > "Hello".chomp!("llo")
 => "He" 
2.7.0 :435 > "Hello\r\n".chop
 => "Hello" 
2.7.0 :436 > "Hello".chop
 => "Hell" 
2.7.0 :437 > "Hello".chop.chop.chop
 => "He" 
 => "Hello World" 
2.7.0 :439 > a.chr
 => "H" 
2.7.0 :440 > a.clear
 => "" 
2.7.0 :441 > a
 => "" 
2.7.0 :442 > a="Hello World"
2.7.0 :443 > a.count "l"
 => 3 
2.7.0 :444 > a.count "llo"
 => 5 
2.7.0 :445 > a << "!!!"
 => "Hello World!!!" 
2.7.0 :446 > b="Sam"
2.7.0 :447 > a.concat(b)
 => "Hello World!!!Sam" 
2.7.0 :448 > a.concat(b,a)
 => "Hello World!!!SamSamHello World!!!Sam" 
2.7.0 :449 > a.concat(b,"  ",a)
 => "Hello World!!!SamSamHello World!!!SamSam  Hello World!!!SamSamHello World!!!Sam" 
2.7.0 :450 > a
 => "Hello World!!!SamSamHello World!!!SamSam  Hello World!!!SamSamHello World!!!Sam" 
               ^
2.7.0 :454 > 'HELLO'.delete"L"
 => "HEO" 
2.7.0 :455 > 'HELLO'.delete"L","EL"
 => "HEO" 
2.7.0 :456 > 'HELLO'.delete"L","H"
 => "HELLO" 
2.7.0 :457 > 'HELLO'.delete"L","^H"
 => "HEO" 
2.7.0 :458 > 'HELLO'.delete"L","*H"
 => "HELLO" 
2.7.0 :459 > 'HELLO'.delete"aeiou","^H"
 => "HELLO" 
2.7.0 :460 > 'HELLO'.delete"AEIOU","^H"
 => "HLL" 
2.7.0 :461 > 'HELLO'.delete"bc-f","^H"
 => "HELLO" 
2.7.0 :462 > 'HELLO'.delete"BC-F","^H"
 => "HLLO" 
2.7.0 :463 > 'HELLO'.dump
 => "\"HELLO\"" 
2.7.0 :464 > a="Hey"
2.7.0 :465 > a.dump
 => "\"Hey\"" 
2.7.0 :466 > a
 => "Hey" 
2.7.0 :467 > a.each_byte {|i| puts i}
72
101
121
 => "Hey" 
2.7.0 :468 > a.each_char {|i| puts i}
H
e
y
 => "Hey" 
<pre>2.7.0 :469 &gt; a.each_codepoint {|i| puts i}
72
101
121

2.7.0 :474 a.each_line {|i| puts i}
Hey How Are Yoy
 Tell me
2.7.0 :476 > a.empty?
 => false 
2.7.0 :477 > a.eql?b
 => false 
.7.0 :480 > a.end_with?"me"
 => true 
2.7.0 :481 > a.gsub"me","ab"
 => "Hey How Are Yoy\n Tell ab" 
2.7.0 :482 > a.gsub"e","*"
 => "H*y How Ar* Yoy\n T*ll m*" 
2.7.0 :483 > a.include?"a"
 => false 
2.7.0 :484 > a.replace"a"
 => "a" 
2.7.0 :485 > a
 => "a" 
2.7.0 :486 > a="heyy"
2.7.0 :487 > a.index"2"
 => nil 
2.7.0 :492 > a.insert(0,"h")
 => "hheyy" 
2.7.0 :493 > "B".hex
 => 11 
2.7.0 :494 > "hello".match"h"
 => #<MatchData "h"> 
2.7.0 :495 > puts "hello".match"h"
h
 => nil 
2.7.0 :496 > puts "  hello".lstrip
hello
 => nil 
2.7.0 :497 > "hello".match?"h"
 => true 
2.7.0 :498 > "hello".succ
 => "hellp" 
2.7.0 :499 > "hello".oct
 => 0 
2.7.0 :501 > a.ord
 => 104 
2.7.0 :502 > a.partition("y")
 => ["hhe", "y", "y"] 
2.7.0 :503 > b="!!"
2.7.0 :504 > 
2.7.0 :505 > b.prepend("Go","Sam")
 => "GoSam!!" 


