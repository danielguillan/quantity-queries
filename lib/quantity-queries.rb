require 'compass'
extension_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))
Compass::Frameworks.register('quantity-queries', :path => extension_path)

module QuantityQueries
  VERSION = "0.3"
  DATE = "2015-03-04"
end
