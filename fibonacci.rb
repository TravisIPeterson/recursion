#Non-recursive function form
def fibs(n)
    x = 0
    y = 1
    i = 0
    fibs_array = Array.new
    while n > 0
        fibs_array[i] = x
        y = x + y
        x = y - x
        i += 1
        n -= 1
    end
    return fibs_array
end

#Recursive function form
def fibs_rec(n)
    return [0 , 1] unless n > 2

    fibs_rec_array = fibs_rec(n - 1)
    fibs_rec_array << fibs_rec_array[-2] + fibs_rec_array[-1]
end


p fibs(8)
p fibs_rec(8)
p fibs(12)
p fibs_rec(12)
p fibs(133)
p fibs_rec(133)

#Somewhere, Walter Bishop is smiling