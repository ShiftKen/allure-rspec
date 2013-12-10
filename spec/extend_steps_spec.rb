require 'spec_helper'
require 'tempfile'

describe AllureRSpec do
  it "should build" do
    attach_file "test-file1", Tempfile.new("test")
    step "step1" do
      attach_file "test-file2", Tempfile.new("test")
    end

    step "step2" do

      5.should be > 1
    end

    step "step3" do

      0.should == 0
    end
  end
end