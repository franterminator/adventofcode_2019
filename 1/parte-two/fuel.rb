def fuel(mass)
    fuel = (mass/3).to_i - 2
    return fuel > 0 ? fuel : 0
end

def getTotalFuel(mass)
    totalfuel = 0
    # fuel needed to move mass
    fuelbymass = fuel mass
    totalfuel = fuelbymass
    # fuel needed to move fuel
    fuelbystep = fuelbymass
    while fuelbystep > 0 do
        fuelbystep = fuel fuelbystep
        totalfuel += fuelbystep
    end

    return totalfuel
end


require 'open-uri'
file = open('input.txt') {|f| f.read}
list = file.split

finalFuel = 0
for mass in list
    finalFuel += getTotalFuel mass.to_i
end
puts finalFuel



