require File.join(File.dirname(__FILE__), "..", "test_helper")

class WorklingDelta::IndexerTest < Test::Unit::TestCase
    context "an indexer" do
    should "spawn a worker with the delta index name when an index is triggered" do
      mock(WorklingDelta::Worker).async_index(:index_name => "test_model_delta", :document_id => nil)

      WorklingDelta::Indexer.new(ThinkingSphinx::Index.new(TestModel), {}).do_index(TestModel)
    end
  end

end

class TestModel < ActiveRecord::Base
  define_index do
    indexes :id
  end
end


