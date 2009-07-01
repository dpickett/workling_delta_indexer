# This is the class that that should be wired to your index configuration
# @example definition in an index
#   define_index do |index|
#     set_property :delta => WorklingDelta::Indexer
#   end
module WorklingDelta
  class Indexer < ThinkingSphinx::Deltas::DefaultDelta
    # Creates the worker that performs the delta indexing
    # @param model the class of that triggered the delta
    # @param instance the instance that changed (if applicable)
    # @return [Boolean] should always return true
    def do_index(model, instance = nil)
      doc_id = instance ? instance.sphinx_document_id : nil
      WorklingDelta::Worker.async_index(:index_name => delta_index_name(model), :document_id => doc_id)
    
      true
    end
  end
end
