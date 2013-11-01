require 'fileutils'
class Cleaner
  attr_reader :path

  def initialize path
    @path = path
  end

  def test
    puts "some test output to make sure the script is working"
  end

  def clean!
    FileUtils.cd(@path) do
      FileUtils.rm Dir.glob('*.dmg')
      FileUtils.rm Dir.glob('*.zip')
    end
  end
end
