arr01 = Array.new
arr02 = Array.new(10)
arr03 = [
    0,
    10,
    20,
    30,
    40
]

arr = Array.new(arr03)

arr.each_index { | index|
    if index == 0
        next
    end
    arr[0] += arr[index]
}
puts("ブロックで計算：" + arr[0].to_s)

arr.each_index  &-> index {
    if index == 0
        next
    end
    arr[0] += arr[index]
}
puts("ラムダで計算：" + arr[0].to_s)

ttl = 0
for item in 1..1000
    ttl += item
end
puts(ttl)

puts("---------------------------------------------------------------------")

hash001 = Hash.new
hash002 = {
    "key01" => 0,
    "key02" => 10,
    "key03" => 100,
    "key04" => 1000,
}

hash002.each_pair &-> key, value {
    puts(key.to_s + "：" + value.to_s)
}
