class Cleaner

 def initialize path
   @path = path
 end

 def clean!
   entries = Dir.entries(@path)
   entries.each do |entry|
     if entry.match /\.dmg/
       File.delete(@path + entry)
     end
   end
 end

end
