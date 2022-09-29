# frozen_string_literal: true
# Inspired from Jekyll's own `post_url`.

module Jekyll
  module Tags
    class PostLink < Liquid::Tag
      include Jekyll::Filters::URLFilters

      def initialize(tag_name, text, tokens)
        super
        # Post paths are absolute :'(
        @post_path = "#{Dir.pwd}/#{text.strip}"
      end

      def render(context)
        @context = context
        site = context.registers[:site]

        site.documents.each do |doc|
          if doc.path == @post_path
            title = doc.data["title"]
            url = relative_url(doc.url)
            return "[#{title}](#{url})"
          end
        end
        return "Error: no page found with path #{@post_path}"
      end
    end
  end
end

Liquid::Template.register_tag("post_link", Jekyll::Tags::PostLink)
