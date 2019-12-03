def fuel_req(mass)
  (mass / 3) - 2
end

def main
  puts File.readlines('./input.txt').reduce(0) { |acc, mass| acc + fuel_req(mass.to_i) }
end

main if __FILE__ == $PROGRAM_NAME
