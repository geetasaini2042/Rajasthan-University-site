# _plugins/custom_taxonomies.rb
#
# Custom taxonomy archives for Jekyll (subjects, semester, courses)
# Works like tags/categories

module Jekyll
  class TaxonomyPage < Page
    def initialize(site, base, dir, taxonomy_name, term)
      @site = site
      @base = base
      @dir  = dir
      @name = "index.html"

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), "#{taxonomy_name}.html")
      self.data['title'] = "#{term.capitalize} - #{taxonomy_name.capitalize}"
      self.data[taxonomy_name] = term
    end
  end

  class TaxonomyGenerator < Generator
    safe true

    def generate(site)
      # Define which taxonomies to handle
      taxonomies = ["subjects", "semester", "courses"]

      taxonomies.each do |taxonomy|
        terms = site.posts.docs.flat_map { |p| p.data[taxonomy] || [] }.uniq
        terms.each do |term|
          dir = "/#{taxonomy}/#{term.downcase}/"
          site.pages << TaxonomyPage.new(site, site.source, dir, taxonomy, term)
        end
      end
    end
  end
end
