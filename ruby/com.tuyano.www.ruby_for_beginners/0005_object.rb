def __line__
    puts("----------------------------------------------------")
end

class Helo

    attr_accessor:name

    def initialize(name = "noname")
        @name = name
    end

    def say
        puts("Hello, " + @name + "!!")
        
    end

end


helo = Helo.new("taro")
helo.say
helo.name = "花子"
helo.say

__line__

class Tax

    @@zeiritsu = 0.08

    def self.zeiritsu=(val)
        @@zeiritsu = val
    end
    
    def self.price_with_tax(price)
        return (price * (1.0 + @@zeiritsu)).to_i
    end

    def self.tax(price)
        return (price * @@zeiritsu).to_i
    end

end

price = 12300

puts("価格： " + price.to_s)
puts("税込： " + Tax.price_with_tax(price).to_s)
puts("税額： " + Tax.tax(price).to_s)
Tax.zeiritsu = 0.1
puts("価格： " + price.to_s)
puts("税込： " + Tax.price_with_tax(price).to_s)
puts("税額： " + Tax.tax(price).to_s)

__line__

class People

    attr_accessor:name

    def initialize(name = "noname")
        @name = name.to_s
    end

    def print_name
        puts("Name: " + @name)
    end

end

class People2 < People

    attr_accessor:age

    def initialize(name = "noname", age = 0)
        @name = name.to_s
        @age = age.to_i
    end

    def print_name
        puts("My Name is " + @name.to_s + "and " + @age.to_s + "years old.")
    end

end

taro = People.new("taro")
hanako = People2.new("花子",25)
taro.print_name
hanako.print_name

__line__


class Integer

    def to_ks
        kn_list = [
            "〇",
            "一",
            "二",
            "三",
            "四",
            "五",
            "六",
            "七",
            "八",
            "九"
        ]
        str = self.to_s
        kstr = ""

        str.each_char &-> char {
            kstr += kn_list[char.to_i]
        }

        return kstr
    end
    
end

n = 123000
puts(n.to_s)
puts(n.to_ks)

__line__
