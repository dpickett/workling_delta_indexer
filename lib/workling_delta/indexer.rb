module WorklingDelta
  class Indexer < ThinkingSphinx::Deltas::DefaultDelta
    def do_index(model, instance = nil)
      doc_id = instance ? instance.sphinx_document_id : nil
      WorklingDelta::Worker.async_index(:index_name => delta_index_name(model), :document_id => doc_id)
    
      true
    end
  end
end
