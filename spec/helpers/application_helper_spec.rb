require 'spec_helper'

describe ApplicationHelper do

  describe "full_title" do

    it "should contain page title" do
      full_title('foo').should =~ /^foo |/
    end

    it "should contain base title" do
      full_title('foo').should =~ /SampleApp$/
    end

    it "should not contain pipe in home page" do
      full_title('').should_not =~ /\|/
    end
  end
end

