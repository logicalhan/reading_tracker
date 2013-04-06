require File.expand_path("../../../tracker", __FILE__)
describe "Tracker" do
  context "making sure rspec works" do
    it "should return true when the method rspec_works is called" do
      Tracker.rspec_works.should eq(true)
    end
  end
  context "initialization" do
    it "should take an optional hash when initializing" do 
      expect { Tracker.new(url: "asdf") }.to_not raise_error
    end
    it "should not raise an error when initializing without any options" do 
      expect { Tracker.new }.to_not raise_error
    end
  end
  context "connect to web" do
    before(:each) do 
      @tracker = Tracker.new
      @default_url = "http://classics.mit.edu/Tzu/artwar.1b.txt"
    end
    it "should have a default url" do
      @tracker.url.should_not eq("")
    end

    it "should default the url to art of war.1b" do
      @tracker.url.should eq(@default_url)
    end

  end
end