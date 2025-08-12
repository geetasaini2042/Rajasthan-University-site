module Jekyll
  class SemesterPage < Page
    def initialize(site, base, dir, semester)
      @site = site
      @base = base
      @dir  = dir
      @name = "index.html"

      self.process(@name)
      self.read_yaml(File.join(base, "_layouts"), "semester.html")
      self.data["title"] = "Semester: #{semester.capitalize}"
      self.data["semester"] = semester
    end
  end

  class SemestersGenerator < Generator
    safe true
    priority :low

    def generate(site)
      semesters = site.posts.docs.flat_map do |post|
        sem = post.data["semesters"]
        sem = [sem] if sem.is_a?(String)
        sem || []
      end.uniq

      semesters.each do |semester|
        slug = Utils.slugify(semester)
        dir = File.join("semesters", slug)
        site.pages << SemesterPage.new(site, site.source, dir, semester)
      end
    end
  end
end
