module Jekyll
  class CoursePage < Page
    def initialize(site, base, dir, course)
      @site = site
      @base = base
      @dir  = dir
      @name = "index.html"

      self.process(@name)
      self.read_yaml(File.join(base, "_layouts"), "course.html")
      self.data["title"] = "Course: #{course.capitalize}"
      self.data["course"] = course
    end
  end

  class CoursesGenerator < Generator
    safe true
    priority :low

    def generate(site)
      courses = site.posts.docs.flat_map do |post|
        c = post.data["courses"]
        c = [c] if c.is_a?(String)
        c || []
      end.uniq

      courses.each do |course|
        slug = Utils.slugify(course)
        dir = File.join("courses", slug)
        site.pages << CoursePage.new(site, site.source, dir, course)
      end
    end
  end
end
