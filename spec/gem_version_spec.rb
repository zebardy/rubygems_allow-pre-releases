require 'spec_helper'

describe Gem::Version do

  describe ".correct?" do
    it "accept versions like 123.123.123-alpha-123" do
      Gem::Version.correct?("123.123.123-alpha-123").should be_true
    end
    it "still accepts versions like 123.123.123" do
      Gem::Version.correct?("123.123.123").should be_true
    end
    it "returns false when passing a bad version string" do
      Gem::Version.correct?("bob-steve.matt&").should be_false
    end
  end

end
