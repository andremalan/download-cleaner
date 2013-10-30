require 'rspec'
require 'cleaner'
require 'fileutils'

describe Cleaner do
  let(:path){"spec/fixtures/"}

  subject {Cleaner.new(path)}

  before(:each) do
      FileUtils.touch(path + "testapp.dmg")
      FileUtils.touch(path + "testapp.not_dmg")
  end

  after(:each) do
    Dir.entries(path).each do |entry|
      if entry != "."
        File.delete(path + entry)
      end
    end

  end
  describe "clean!" do
    it "removes all the dmg files in the downloads directory" do

      subject.clean!
      entries = Dir.entries(path)
      entries.should_not include('testapp.dmg')


    end
    it "does not remove other files in the downloads directory" do
      entries = Dir.entries(path)
      entries.should include('testapp.not_dmg')

    end
  end
end
