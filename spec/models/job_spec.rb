require 'spec_helper'

describe Job do
  context "generating a job via the API" do
    before(:each) do
      @preset = Preset.create!(:name => 'preset')
    end
    
    it "should map the attributes correctly" do
      job = Job.from_api({"input" => "input", "output" => "output", "preset" => "preset"})
      job.source_file.should == 'input'
      job.destination_file.should == 'output'
      job.preset.should == @preset
    end
  end
end
