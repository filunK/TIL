
a = 10
b = 20

if (a == b) then
    puts(a.to_s + "と" + b.to_s +  "は等しい")
else
    puts(a.to_s + "と" + b.to_s +  "は等しくない")
end

c = 4
case c
when 1..3
    puts("春")
when 4..6
    puts("夏")
when 7..9
    puts("秋")
when 10..12
    puts("冬")
else
    puts("違う値")
end

d = 100
e = 0
f = 0

puts(d.to_s + "までの合計")
while d <= 0
    f += x
    e += 1
end
puts(f)

g = 1234567890
h = g
i = 2
puts(g.to_s + "の素因数")

while true
    if h % i == 0 then
            h /= i
            puts(i)
    else
        i  += 1
    end
    if h / 2 < i then
        break
    end
end
if h > 1 then
    puts(h)
end