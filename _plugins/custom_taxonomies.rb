# _plugins/subjects_archive.rb
#
# Custom taxonomy archive for "subjects"
# Handles URLs like /subjects/<subject>/ using _layouts/subject.html
# Case-insensitive on 'subject' vs 'subjects'

module Jekyll
  class SubjectsPage < Page
    def initialize(site, base, dir, subject)
      @site = site
      @base = base
      @dir  = dir
      @name = "index.html"

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'subject.html')
      self.data['title'] = "Subject: #{subject.capitalize}"
      self.data['subject'] = subject
    end
  end

  class SubjectsGenerator < Generator
    safe true
    priority :low

    def generate(site)
      subjects = site.posts.docs.flat_map { |post| post.data['subjects'] || [] }
      subjects.uniq.each do |subject|
        # Normalize folder to lowercase and slugify
        slug = Utils.slugify(subject)

        dir = "/subjects/#{slug}/"
        site.pages << SubjectsPage.new(site, site.source, dir, subject)
      end
    end
  end
end
