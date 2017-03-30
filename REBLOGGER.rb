
#MARKIPLIER
require 'curate_tumblr'
File.truncate("~/linksfinal.rb", 0)
numba = 0
while numba <= 50
  random_line = File.readlines("~/linksraw.rb").sample
  File.open("~/linksfinal.rb", 'a') do |f2|
    f2.puts "#{random_line}"
  end
  numba += 1
end
CurateTumblr.reblog( "YOURTUMBLRUSERNAME", "~/linksfinal.rb" )
