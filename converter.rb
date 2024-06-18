require "phlexing"

# Setting the input SVG
input_svg = <<~SVG
<svg
  xmlns="http://www.w3.org/2000/svg"
  width="24"
  height="24"
  viewBox="0 0 24 24"
  fill="none"
  stroke="currentColor"
  stroke-width="2"
  stroke-linecap="round"
  stroke-linejoin="round"
>
  <path d="M3 16v-6a2 2 0 1 1 4 0v6" />
  <path d="M3 13h4" />
  <path d="M10 8v6a2 2 0 1 0 4 0v-1a2 2 0 1 0 -4 0v1" />
  <path d="M20.732 12a2 2 0 0 0 -3.732 1v1a2 2 0 0 0 3.726 1.01" />
</svg>
SVG

# Substituting attributes to dynamic values
input_svg.gsub!('<svg', '<svg class="<%= @options[:class] || "" %>"')
input_svg.gsub!('width="24"', 'width="<%= @options[:width] || "24" %>"')
input_svg.gsub!('height="24"', 'height="<%= @options[:height] || "24" %>"')
input_svg.gsub!('stroke="currentColor"', 'stroke="<%= @options[:stroke] || "currentColor" %>"')
input_svg.gsub!('stroke-width="2"', 'stroke-width="<%= @options[:stroke_width] || "2" %>"')

# Converting the input SVG to a Phlex Component
output = Phlexing::Converter.convert(input_svg, component: true, component_name: "PhlexTablerIcons::Abc", parent_component: "Phlex::SVG")

# Log the output
puts output
