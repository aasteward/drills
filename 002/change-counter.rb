q = 0
d = 0
n = 0
p = 0

def changecount(money)
    money = money.round(2)
    while money > 0.24 do
        q += 1
        money -= 0.25
    end
    while money > 0.09 do
        d += 1
        money -= 0.10
    end
    while money > 0.04 do
        n += 1
        money -= 0.05
    end
    while money > 0.00 do
        p += 1
        money -= 0.01
    end
    return q + " quarters\n" + d + " dimes\n" + n + " nickel\n" + p + " pennies"
end
