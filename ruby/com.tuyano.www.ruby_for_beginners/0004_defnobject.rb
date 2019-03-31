def __line__
    puts("----------------------------------------------------")
end

def hello
    puts("HELLO!!")
end

hello

__line__

def hello(name)
    puts("HELLO " + name.to_s + "!!")
    return "HELLO " + name.to_s + "!![string]" 
end

hello("Taro")
hello("Hanako")

puts(hello("Tanaka"))

__line__

class Hello

    def initialize(name = "noname")
        @greetingMessage = "Hello"
        @name = name
    end

    def say
        puts(@greetingMessage.to_s + " " +  @name.to_s + "!!")
    end

    def sayTo(name)
        puts(@greetingMessage.to_s + ", " + name.to_s + "!!")
    end
end

HelloObj01 = Hello.new
HelloObj01.say
HelloObj01.sayTo("花子")

HelloObj02 = Hello.new(@name = "吉田")
HelloObj02.say
HelloObj02.sayTo("たかし")