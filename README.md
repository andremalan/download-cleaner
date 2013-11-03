download-cleaner
================

Clears out useless files in downloads folder

usaage:

Just run the file in command line with the folder that you want to clean's path:

example:

$code/download_cleaner/lib/download_cleaner.rb ~/Downloads

At the moment just does dmg's and zip files in the downloads folder on my local file system, but I may genericize it soon.

I'm using lingon3 to make it run every night. Just add a new job and paste in the path to the download_cleaner.rb file and append ~/Downloads as an argument.


