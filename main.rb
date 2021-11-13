require 'benchmark'
require_relative './lib/print_all_positive_solutions'

puts Benchmark.realtime { print_all_positive_solutions }
