require "phlexing"

puts "--- ARGV ---"
puts ARGV.inspect
puts "--- ARGV ---"


# Setting the input SVG
input_svg = <<~SVG
<svg  xmlns="http://www.w3.org/2000/svg"  width="24"  height="24"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="2"  stroke-linecap="round"  stroke-linejoin="round"  class="icon icon-tabler icons-tabler-outline icon-tabler-menu-2"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M4 6l16 0" /><path d="M4 12l16 0" /><path d="M4 18l16 0" /></svg>
SVG

# Substituting attributes to dynamic values
input_svg.gsub!('<svg', '<svg class="<%= @options[:class] || "" %>"')
input_svg.gsub!('width="24"', 'width="<%= @options[:width] || "24" %>"')
input_svg.gsub!('height="24"', 'height="<%= @options[:height] || "24" %>"')
input_svg.gsub!('stroke="currentColor"', 'stroke="<%= @options[:stroke] || "currentColor" %>"')
input_svg.gsub!('stroke-width="2"', 'stroke-width="<%= @options[:stroke_width] || "2" %>"')

# Converting the input SVG to a Phlex Component
output = Phlexing::Converter.convert(input_svg, component: true, component_name: "Icons::Menu2", parent_component: "Phlex::SVG")

# Log the output
puts output



# File.read("/Users/elvinas/Repositories/tabler-icons/icons/outline")
# Dir["/Users/elvinas/Repositories/tabler-icons/icons/outline/*.svg"]
