# GCalc - Command line calculator powered by google
# Usage: ruby g.rb "20 + 30 * 1/2"
#
# (c) 2009 Mauricio Gomes <mauricio@edge14.com>

%w(rubygems open-uri hpricot erb).each {|lib| require lib }
doc = Hpricot(open("http://www.google.com/search?q=#{ERB::Util.u(ARGV*' ')}"))
puts doc.search("h2.r").inner_text
