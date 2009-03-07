require File.join(File.dirname(__FILE__), "..", "test_helper")

class WorklingDelta::IndexerTest < Test::Unit::TestCase
  context "an indexer" do
    should "spawn a worker when an index is triggered" do
      mock.proxy(WorklingDelta::Worker).async_index

      WorklingDelta.new.do_index

    end
  end

end
