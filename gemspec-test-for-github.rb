require 'rubygems/specification'

data = File.read('output_catcher.gemspec')
spec = nil
Thread.new { spec = eval("$SAFE = 3\n#{data}") }.join
puts spec