require_relative './part1.rb'

def main
  (0..99).each do |noun|
    (0..99).each do |verb|
      code = File.read('./input.txt').split(',').map { |x| x.to_i }
      code[1] = noun
      code[2] = verb
      output = execute_intcode(code)[0]
      next unless output == 19690720
      puts 100 * noun + verb
      break
    end
  end
end

main if __FILE__ == $PROGRAM_NAME
