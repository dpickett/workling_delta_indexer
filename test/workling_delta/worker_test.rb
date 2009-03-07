require File.join(File.dirname(__FILE__), "..", "test_helper")

class WorklingDelta::WorkerTest < Test::Unit::TestCase
    context "a worker" do
      should "trigger a TS delta job with the index name" do
        mock_job = mock(ThinkingSphinx::Deltas::DeltaJob).new(index_name)
        mock_job.perform

        WorklingDeltaIndexer.async_index
      end

      should "trigger a flag as deleted job if I pass a document id" do

      end

      should "not trigger a flag as deleted job if I don't pass a document id" do

      end
    end
end
