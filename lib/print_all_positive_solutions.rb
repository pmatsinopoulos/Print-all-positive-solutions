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

  count = 0
  h.each do |result, pairs|
    pairs.each do |c, d|
      pairs.each do |a, b|
        puts "#{a}, #{b}, #{c}, #{d}"
        count += 1
      end
    end
  end
  puts count
end
