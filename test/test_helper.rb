require 'rubygems'
require 'test/unit'

require 'shoulda'
require 'rr'
require 'active_support'
require 'active_support/core_ext'

RAILS_ENV = "test"
RAILS_DEFAULT_LOGGER = "/dev/null"

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'vendor'))

require "workling/lib/workling/discovery"
require "workling/lib/workling/base"
require 'workling_delta_indexer'

class Test::Unit::TestCase
  include RR::Adapters::TestUnit
end
