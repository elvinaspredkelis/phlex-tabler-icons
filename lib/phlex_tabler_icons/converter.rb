require "phlexing"

puts "Just a little test to see if the converter.rb file is being loaded."

class PhlexTablerIcons::Converter
  def initialize(raw_svg, options = {})
    @raw_svg = raw_svg
    @options = options
  end

  def call
    # TBA
  end
end
