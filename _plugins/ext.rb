require 'jekyll/scholar'
require 'uri'
require 'citeproc'
require 'csl/styles'

module MarkdownFilter
  class Markdown < BibTeX::Filter
    def apply(value)
      value.to_s.gsub(URI.regexp(['http','https','ftp'])) { |c| "<a href=\"#{$&}\">#{$&}</a>" }
    end
  end
end
