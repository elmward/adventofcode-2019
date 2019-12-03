def fuel_req(mass)
  fuel = (mass / 3) - 2
  if fuel < 0
    0
  else
    fuel + fuel_req(fuel)
  end
end

def main
  puts File.readlines('./input.txt').reduce(0) { |acc, mass| acc + fuel_req(mass.to_i) }
end

main if __FILE__ == $PROGRAM_NAME
