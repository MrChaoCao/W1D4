class Array
  def merge_sort(&prc)
    return self if self.length < 2

    midpoint = self.length / 2
    left_side = self.take(midpoint).merge_sort(&prc)
    right_side = self.drop(midpoint).merge_sort(&prc)

    merge(left_side, right_side, &prc)
  end

  def merge(left, right, &prc)
    prc ||= Proc.new { |a, b| a <=> b }
    array = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1

    end
  end
end
