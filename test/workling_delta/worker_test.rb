require File.join(File.dirname(__FILE__), "..", "test_helper")

class WorklingDelta::WorkerTest < Test::Unit::TestCase
  context "a worker" do
    setup do
      @index_name = "the_delta_index"
      @document_id = 1

      @job = mock(Object)
      mock(ThinkingSphinx::Deltas::DeltaJob).new(@index_name) { @job }
      @job.perform
    end

    context "that doesn't receive a document id" do
      
      should "perform a TS delta job with the index name" do
        invoke_worker(:index_name => @index_name)
      end

      should "not perform a flag as deleted job if I don't pass a document id" do
        dont_allow(ThinkingSphinx::Deltas::FlagAsDeletedJob).new(
         anything, anything)
        
        invoke_worker(:index_name => @index_name)
      end

    end

    context "that receives a document id" do
      should "trigger a flag as deleted job if I pass a document id" do
        delete_job = mock(Object)
        mock(ThinkingSphinx::Deltas::FlagAsDeletedJob).new(
          @index_name, @document_id) { delete_job }
        delete_job.perform

        invoke_worker(:index_name => @index_name, :document_id => @document_id)
      end
    end
    
  end

  private
  def invoke_worker(options = {})
    WorklingDelta::Worker.new.index(options)
  end
end
