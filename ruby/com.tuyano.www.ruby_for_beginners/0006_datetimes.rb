def __line__
    puts("----------------------------------------------------")
end

def create_time
    d1 = Time.now
    d2 = Time.local(2019,4,1,17,58)
    puts(d1.to_s)
    puts(d2.to_s)
end

create_time
__line__

def get_datetime_individuals
    date = Time.now

    year = date.year
    month = date.month
    day = date.day

    wd = [
        "日",
        "月",
        "火",
        "水",
        "木",
        "金",
        "土"
    ][date.wday]

    puts(year.to_s + "年" + month.to_s + "月" + day.to_s + "日 "  + date.wday.to_s + " "+ wd + "曜日")

end

get_datetime_individuals
__line__

def minus_date(date1, date2)

    unless date1.is_a?(Time) && date2.is_a?(Time)
        throw("DataTypeInvalid")
    end

    re = date2 - date1
    puts((re / 60 / 60 / 24).to_i.to_s + "日")

end

def get_after_centdays(date)

    unless date.is_a?(Time)
        throw("DataTypeInvalid")
    end
    
    re = date + 100 * (60 * 60 * 24)
    puts("100日後：　" + re.to_s)
end

d1 = Time.now
d2 = d1 + 40 * (60 * 60 * 24)
puts("d1：　" + d1.to_s)
puts("d2：　" + d2.to_s)
minus_date(d1, d2)
get_after_centdays(d1)
__line__

def format_date
    date = Time.now
    re = date.strftime("%Y年の%m月は%d日ごろ。%H時と%M分です。")
    puts(re.to_s)
end

format_date
__line__