require File.join(File.dirname(File.dirname(File.dirname(__FILE__))),'spec_helper')

describe Pickler::Tracker::Project do

  before do
    @tracker = Pickler::Tracker.new('', false)
    @project = @tracker.project(1)
  end

  it "should have an id Integer" do
    @project.id.should be_kind_of(Integer)
  end

  it "should have a name String" do
    @project.name.should be_kind_of(String)
  end

  it "should have an iteration length Integer" do
    @project.iteration_length.should be_kind_of(Integer)
  end

  it "should have a week start day String" do
    @project.week_start_day.should be_kind_of(String)
  end

  it "should have a point scale String" do
    @project.point_scale.should be_kind_of(String)
  end

  it "should have a collection of stories" do
    @project.stories.first.should be_kind_of(Pickler::Tracker::Story)
  end

  it "should retrieve a story by id" do
    @project.story(1).should be_kind_of(Pickler::Tracker::Story)
  end

  it "should have a story factory" do
    story = @project.new_story
    story.should be_kind_of(Pickler::Tracker::Story)
    story.id.should be_nil
  end

end
