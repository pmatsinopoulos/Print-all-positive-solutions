# pow(a, 3) + pow(b, 3) == pow(c, 3) + pow(d, 3)
#
def print_all_positive_solutions
  upper_bound = 1_000
  array = (1..upper_bound).to_a
  h = {}
  array.to_a.each do |c|
    array.to_a.each do |d|
      result = c * c * c + d * d * d
      h[result] ||= []
      h[result].push([c, d])
    end
  end

  array.to_a.each do |a|
    array.to_a.each do |b|
      result = a * a * a + b * b * b
      pairs = h[result]
      pairs.each do |pair|
        puts "#{a}, #{b}, #{pair[0]}, #{pair[1]}"
      end
    end
  end
end
