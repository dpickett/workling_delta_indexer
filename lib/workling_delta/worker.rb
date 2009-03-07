class WorklingDelta::Worker < Workling::Base
  def index(options = {})
    ThinkingSphinx::Deltas::DeltaJob.new(options[:index_name]).perform
    
    if options[:document_id]
      ThinkingSphinx::Deltas::FlagAsDeletedJob.new(options[:index_name], 
        options[:document_id]).perform
    end
  end
end
