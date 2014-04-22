
# requires installation of ImageMagick
# http://www.imagemagick.org/script/binary-releases.php#windows

# resizes a series of photos from 4608x3456 resolution to 1152x864.
# This version operates on photos with sequential filenames DSCN0367.JPG through to DSCN0374.JPG

require "rubygems"
require 'mini_magick'

newResolution = '1152x864'

for i in 0..7
	filename = 'DSCN0' + (i + 367).to_s + '.JPG'
	if File.exist?(filename)
		image = MiniMagick::Image.open(filename)
		image.resize(newResolution) # 25% of the filesize of raw images off my camera

		newFilename = (i+1).to_s + '.JPG'
		image.write(newFilename)
		puts filename + " converted to " + newFilename
	end
end

