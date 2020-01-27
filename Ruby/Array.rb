2.7.0 :001 > a=[1,'hey',2,3,4.7]
 => [1, "hey", 2, 3, 4.7] 
2.7.0 :003 > b=Array(3)
 => [3] 
2.7.0 :005 > c=Array.new
2.7.0 :006 > c
 => [] 
2.7.0 :008 > Array.new(3)
 => [nil, nil, nil] 
2.7.0 :009 > d=Array.new(3) {Array.new(4)}
2.7.0 :010 > d
 => [[nil, nil, nil, nil], [nil, nil, nil, nil], [nil, nil, nil, nil]] 
2.7.0 :011 > puts b
3
 => nil 
2.7.0 :003 > a[2,4]
 => [4, 5, 3, 7] 
2.7.0 :004 > a.at(2)
 => 4 
2.7.0 :006 > a.fetch(13,"h")
 => "h" 
2.7.0 :007 > a
 => [1, 2, 4, 5, 3, 7, 9] 
2.7.0 :008 > puts a.fetch(13,"h")
h
2.7.0 :010 > a.first
 => 1 
2.7.0 :011 > a.last
 => 9 
2.7.0 :012 > a.take(3)
 => [1, 2, 4] 
2.7.0 :014 > a.drop(2)
 => [4, 5, 3, 7, 9] 

2.7.0 :021 > a.unshift(0)
 => [0, 1, 2, 4, 5, 3, 7, 9, "d", "h"] 
2.7.0 :022 > a.count
 => 10 
2.7.0 :023 > a.insert(3,4,5,6)
 => [0, 1, 2, 4, 5, 6, 4, 5, 3, 7, 9, "d", "h"] 
2.7.0 :024 > a.pop
 => "h" 
2.7.0 :025 > a.shift
 => 0 
2.7.0 :026 > a
 => [1, 2, 4, 5, 6, 4, 5, 3, 7, 9, "d"] 
2.7.0 :027 > a.delete(5)
 => 5 
2.7.0 :028 > a.delete_at(5)
 => 3 
2.7.0 :029 > a.uniq
 => [1, 2, 4, 6, 7, 9, "d"] 
2.7.0 :030 > a.compact!
 => nil 
2.7.0 :031 > a
 => [1, 2, 4, 6, 4, 7, 9, "d"] 
2.7.0 :032 > 
2.7.0 :006 > a.each {|a| print a-=5," "}
-4 0 1 84 3 1 0  => [1, 5, 6, 89, 8, 6, 5] 
2.7.0 :007 > a.each {|a| print a-=1," "}
0 4 5 88 7 5 4  => [1, 5, 6, 89, 8, 6, 5] 
2.7.0 :008 > a.each {|a| print a-=1," "}
0 4 5 88 7 5 4  => [1, 5, 6, 89, 8, 6, 5] 
2.7.0 :009 > print a.each {|a| print a-=1," "}
0 4 5 88 7 5 4 [1, 5, 6, 89, 8, 6, 5] => nil 
2.7.0 :010 > a.map {|a| 2*a}
 => [2, 10, 12, 178, 16, 12, 10] 
2.7.0 :011 > a
 => [1, 5, 6, 89, 8, 6, 5] 
2.7.0 :012 > a.map! {|a| 2*a}
 => [2, 10, 12, 178, 16, 12, 10] 
2.7.0 :013 > a
 => [2, 10, 12, 178, 16, 12, 10] 

2.7.0 :014 > a.select {|a|  a<12}
2.7.0 :015 >   
 => [2, 10, 10] 
2.7.0 :016 > a.reject {|a|  a<12}
2.7.0 :017 >   
 => [12, 178, 16, 12] 
2.7.0 :018 > a.reject! {|a|  a<12}
2.7.0 :019 >   
 => [12, 178, 16, 12] 
2.7.0 :020 > a
 => [12, 178, 16, 12] 
2.7.0 :021 > Array.new(3){|index| index**2}
 => [0, 1, 4] 
2.7.0 :022 > Array.new(2){Hash.new}
 => [{}, {}] 
2.7.0 :023 > Array[0]["a"]="Hamsworth"

2.7.0 :025 > ab[0]["a"]="Hamsworth"
2.7.0 :026 > puts ab
{"a"=>"Hamsworth"}
{}

2.7.0 :001 > a=[1,2,3,45,6,7]
2.7.0 :002 > b=["a","b",4]
2.7.0 :003 > a*2
 => [1, 2, 3, 45, 6, 7, 1, 2, 3, 45, 6, 7] 
2.7.0 :005 > a-[2,3,4]
 => [1, 45, 6, 7] 
2.7.0 :006 > a<<2<<"f"<<[2,0]
 => [1, 2, 3, 45, 6, 7, 2, "f", [2, 0]] 
#Regular Exp
2.7.0 :093 > puts a.match(/[aeiou]/)
2.7.0 :094 >   
e
 => nil 
2.7.0 :097 > puts a.match(/\d/)
2.7.0 :098 >   

 => nil 
2.7.0 :099 > a="45Hiii"
2.7.0 :100 >   
2.7.0 :101 > puts a.match(/\d/)
2.7.0 :102 >   
4
 => nil 
2.7.0 :103 > puts a.match(/\d+/)
2.7.0 :104 >   
45
 2.7.0 :138 > "Hi there, I am sumit goyal".match(/Hi/)
 => #<MatchData "Hi"> 
2.7.0 :139 > "Hi there, I am sumit goyal"=~/Hi/
 => 0 
2.7.0 :140 > "Hi there, I am sumit goyal"=~/Hiy/
 => nil 
2.7.0 :141 > a="Hi there, I am sumit goyal"
2.7.0 :142 > if a.match(/I/)
2.7.0 :143 >   puts "match"
2.7.0 :144 > else
2.7.0 :145 >   puts "no match"
2.7.0 :146 > end
match
2.7.0 :179 > def hello(str)
2.7.0 :180 >   str=~ /[aeiou]/
2.7.0 :181 > end
 => :hello 
2.7.0 :182 > puts (hello("Hii"))
1
 => nil 
2.7.0 :183 > puts (hello("Hii Raj"))
1
 => nil 
2.7.0 :184 > puts (hello("byy"))

 => nil 

# sort an given array of strings by length
arra1 = ['abcde', 'abdf', 'adb', 'ae', 'b',"", 'bacdef']
puts "Original array:\n"
puts arra1
puts "Sort according to length"
puts arra1.sort_by(&:length)


