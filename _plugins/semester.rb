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
      # Collect semesters from posts
      semesters = site.posts.docs.flat_map do |post|
        sem = post.data["semesters"] || post.data["semester"]
        # Normalize to array
        if sem.is_a?(String)
          [sem]
        elsif sem.is_a?(Array)
          sem
        else
          []
        end
      end.uniq

      semesters.each do |semester|
        slug = Utils.slugify(semester)
        dir = File.join("semesters", slug)
        site.pages << SemesterPage.new(site, site.source, dir, semester)
      end
    end
  end

  # आपकी existing SubjectPage और SubjectsGenerator भी यहीं रहेगी
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
