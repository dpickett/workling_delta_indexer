require 'rubygems'
require 'test/unit'

require 'shoulda'
require 'rr'

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'vendor'))

require "workling/lib/workling"
require "workling/init"
require 'workling_delta_indexer'

class Test::Unit::TestCase

end
