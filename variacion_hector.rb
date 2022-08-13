a="RRGGBBYYKK"
b="|/|/|=|/|"
c="++*~~*++*"

(1..20).each do |i| 
  puts "#{a}    #{b}     #{c}    #{i}"
   a= a[1...]+a[0] 
   b = b[1...]+b[0] 
   c = c[1...]+c[0]  
 
end
