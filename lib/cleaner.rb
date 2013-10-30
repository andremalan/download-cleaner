require 'fileutils'
class Cleaner

  def initialize path
    @path = path
  end

  def clean!
    FileUtils.cd(@path) do
      FileUtils.rm Dir.glob('*.dmg')
    end
  end
end
