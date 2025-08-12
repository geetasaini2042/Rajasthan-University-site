module Jekyll
  class SubjectPage < Page
    def initialize(site, base, dir, subject)
      @site = site
      @base = base
      @dir  = dir
      @name = "index.html"

      self.process(@name)
      self.read_yaml(File.join(base, "_layouts"), "subject.html")
      self.data["title"] = "Subject: #{subject.capitalize}"
      self.data["subject"] = subject
    end
  end

  class SubjectsGenerator < Generator
    safe true
    priority :low

    def generate(site)
      subjects = site.posts.docs.flat_map do |post|
        s = post.data["subjects"]
        s = [s] if s.is_a?(String)
        s || []
      end.uniq

      subjects.each do |subject|
        slug = Utils.slugify(subject)
        dir = File.join("subjects", slug)
        site.pages << SubjectPage.new(site, site.source, dir, subject)
      end
    end
  end
end
