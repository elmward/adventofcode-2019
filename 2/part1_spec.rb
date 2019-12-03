require_relative('./part1.rb')

RSpec.describe("Advent of Code day 2 part 1") do
  PROGRAM_RESULTS = {
    [1,0,0,0,99] => [2,0,0,0,99],
    [2,3,0,3,99] => [2,3,0,6,99],
    [2,4,4,5,99,0] => [2,4,4,5,99,9801],
    [1,1,1,4,99,5,6,0,99] => [30,1,1,4,2,5,6,0,99],
  }

  PROGRAM_RESULTS.each do |program, result|
    it "handles a simple program" do
      expect(execute_intcode(program)).to eq (result)
    end
  end
end
