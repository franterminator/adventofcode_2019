def fuel(mass)
    return (mass/3).to_i - 2
end

require 'open-uri'
file = open('input.txt') {|f| f.read}
list = file.split

totalfuel = 0
for mass in list
    totalfuel += fuel mass.to_i
end
puts totalfuel



