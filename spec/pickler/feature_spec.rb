require File.join(File.dirname(File.dirname(__FILE__)),'spec_helper')

describe Pickler::Feature do
  before do
    @pickler = Pickler.new(File.join(File.dirname(__FILE__), ".."))
  end

  it "should return an existing story if initialized with an id" do
    feature = Pickler::Feature.new(@pickler, 1)
    feature.story.should be_kind_of(Pickler::Tracker::Story)
    feature.story.id.should_not be_nil
  end

  it "should return a new story if initialized with new feature" do
    feature = Pickler::Feature.new(@pickler, "account")
    feature.story.should be_kind_of(Pickler::Tracker::Story)
    feature.story.id.should be_nil
    feature.story.story_type.should == "feature"
  end

end
