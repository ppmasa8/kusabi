
  class String
    def to_cuneiform
      result = []
      strings = split('')
      strings.each do |str|
        result.push(["12000".hex].pack("U"))
      end
      result.join
    end
  end