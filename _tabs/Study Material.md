---
icon: fa fa-caret-down
order: 4
---
# Welcome to Edumate – Rajasthan University Notes Portal

The Rajasthan University Notes Portal is a dedicated platform created to provide students with easy access to high-quality academic resources. This portal is designed to support learners in their academic journey by offering a wide range of notes, previous year question papers, and updated syllabi across different courses and subjects. Whether you are preparing for your upcoming semester exams or simply want to strengthen your understanding of a topic, this portal ensures that you have reliable study material at your fingertips.

The interface is simple and easy to navigate — you can browse by course, subject, or semester. Our goal is to ensure that students spend less time searching for resources and more time studying. By regularly updating our database with new content, we help students stay prepared and confident for their exams.

It is important to note that while the portal is tailored for Rajasthan University students, it is not an official university website. It has been built to complement the official syllabus and aid self-study. Bookmark this page for quick access and stay ahead in your studies!



---
layout: page
title: All Subjects
---

<section class="subjects-section container my-5">
  <h1 class="mb-3 text-center">Explore All Subjects</h1>
  <p class="text-center text-muted mb-4">
    Choose from the subjects below to find related study material and posts curated just for you.
  </p>

  <div id="subjects" class="row g-4 justify-content-center">
    {% assign subjects = '' | split: '' %}

    {% for post in site.posts %}
      {% for s in post.subjects %}
        {% unless subjects contains s %}
          {% assign subjects = subjects | push: s %}
        {% endunless %}
      {% endfor %}
    {% endfor %}

    {% assign sorted_subjects = subjects | sort_natural %}

    {% for s in sorted_subjects %}
      <div class="col-12 col-md-4 d-flex justify-content-center">
        <a 
          href="{{ s | slugify | url_encode | prepend: '/subjects/' | append: '/' | relative_url }}" 
          class="btn btn-outline-primary position-relative px-4 py-2 w-100"
          style="max-width: 250px; border-radius: 0.5rem;"
          title="View all posts for {{ s }}"
        >
          {{ s }}
          <span 
            class="badge bg-primary rounded-pill position-absolute top-0 start-100 translate-middle"
            style="font-size: 0.75rem;"
            aria-label="Number of posts in {{ s }}"
          >
            {{ site.posts | where_exp: "item", "item.subjects contains s" | size }}
          </span>
        </a>
      </div>

      {% comment %}
      हर 3 subjects के बाद AdSense दिखाएँ
      {% endcomment %}
      {% if forloop.index0 != 0 and forloop.index0 % 3 == 0 %}
        <div class="col-12 text-center my-3">
          <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-6225893138851886"
               crossorigin="anonymous"></script>
          <ins class="adsbygoogle"
               style="display:block"
               data-ad-format="fluid"
               data-ad-layout-key="-fb+5w+4e-db+86"
               data-ad-client="ca-pub-6225893138851886"
               data-ad-slot="4358395798"></ins>
          <script>
               (adsbygoogle = window.adsbygoogle || []).push({});
          </script>
        </div>
      {% endif %}
    {% endfor %}
  </div>
</section>
---

## 🎓 Study Material – Semester Wise
- [Semester 1](https://uor.edumate.life/semesters/semester-1)
- [Semester 2](https://uor.edumate.life/semesters/semester-2)
- [Semester 3](https://uor.edumate.life/semesters/semester-3)
- [Semester 4](https://uor.edumate.life/semesters/semester-4)
- [Semester 5](https://uor.edumate.life/semesters/semester-5)
- [Semester 6](https://uor.edumate.life/semesters/semester-6)

---

## 📖 Study Material – Course Wise
- [B.Sc Notes](https://uor.edumate.life/courses/BSC)
- [B.A Notes](https://uor.edumate.life/courses/BA)
- [B.Com Notes](https://uor.edumate.life/courses/BCOM)
- [M.A Notes](https://uor.edumate.life/courses/MA)

---

> **Note:** This is **not** the official Rajasthan University website. This portal is created solely for educational purposes to help students with study materials.
