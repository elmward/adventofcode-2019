def execute_intcode(code)
  pos = 0
  op = code[pos]
  while op != 99 do
    x = code[pos+1]
    y = code[pos+2]
    target = code[pos+3]
    case op
    when 1
      code[target] = code[x] + code[y]
    when 2
      code[target] = code[x] * code[y]
    end
    pos += 4
    op = code[pos]
  end
  code
end

def main
  code = File.read("./input.txt")
  code = code.split(',').map { |x| x.to_i }
  code[1] = 12
  code[2] = 2
  p execute_intcode(code)
end

main if __FILE__ == $PROGRAM_NAME
