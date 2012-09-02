require File.dirname(__FILE__) + '/../spec_helper'

describe Horse do
  it "should be valid" do
    Horse.new.should be_valid
  end
end
