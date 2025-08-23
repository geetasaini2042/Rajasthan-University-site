---
icon: fa fa-caret-down
order: 4
---
# Welcome to Edumate – Rajasthan University Notes Portal

The Rajasthan University Notes Portal is a dedicated platform created to provide students with easy access to high-quality academic resources. This portal is designed to support learners in their academic journey by offering a wide range of notes, previous year question papers, and updated syllabi across different courses and subjects. Whether you are preparing for your upcoming semester exams or simply want to strengthen your understanding of a topic, this portal ensures that you have reliable study material at your fingertips.

The interface is simple and easy to navigate — you can browse by course, subject, or semester. Our goal is to ensure that students spend less time searching for resources and more time studying. By regularly updating our database with new content, we help students stay prepared and confident for their exams.

## SUBJECT WISE NOTES

Choose from the subjects below to find related study material and posts curated just for you.
  

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

---

## SEMESTER WISE NOTES



  <div id="semesters" class="row g-4 justify-content-center">
    {% assign semesters = '' | split: '' %}

    {% for post in site.posts %}
      {% for sem in post.semesters %}
        {% unless semesters contains sem %}
          {% assign semesters = semesters | push: sem %}
        {% endunless %}
      {% endfor %}
    {% endfor %}

    {% assign sorted_semesters = semesters | sort_natural %}

    {% for sem in sorted_semesters %}
      <div class="col-12 col-md-4 d-flex justify-content-center">
        <a 
          href="{{ sem | slugify | url_encode | prepend: '/semesters/' | append: '/' | relative_url }}" 
          class="btn btn-outline-primary position-relative px-4 py-2 w-100 semester-btn"
          title="View all posts for {{ sem }}"
        >
          {{ sem }}
          <span 
            class="badge bg-primary rounded-pill position-absolute top-0 start-100 translate-middle"
            style="font-size: 0.75rem;"
            aria-label="Number of posts in {{ sem }}"
          >
            {{ site.posts | where_exp: "item", "item.semesters contains sem" | size }}
          </span>
        </a>
      </div>
    {% endfor %}
  </div>

<!-- ✅ Ad Section with proper gap -->
<div class="ad-container text-center">
  <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-6225893138851886"
       crossorigin="anonymous"></script>
  <ins class="adsbygoogle"
       style="display:block; text-align:center;"
       data-ad-layout="in-article"
       data-ad-format="fluid"
       data-ad-client="ca-pub-6225893138851886"
       data-ad-slot="1023470228"></ins>
  <script>
       (adsbygoogle = window.adsbygoogle || []).push({});
  </script>
</div>

<!-- ✅ Custom CSS for spacing -->
<style>
.semester-btn {
  max-width: 250px;
  border-radius: 0.5rem;
}

.ad-container {
  margin-top: 60px;  /* Gap above ad */
  margin-bottom: 40px; /* Gap below ad */
}
</style>

---

## COURSE WISE NOTES

Choose from the courses below to find related study material and posts curated just for you.


  <div id="courses" class="row g-4 justify-content-center">
    {% assign courses = '' | split: '' %}

    {% for post in site.posts %}
      {% for c in post.courses %}
        {% unless courses contains c %}
          {% assign courses = courses | push: c %}
        {% endunless %}
      {% endfor %}
    {% endfor %}

    {% assign sorted_courses = courses | sort_natural %}

    {% for c in sorted_courses %}
      <div class="col-12 col-md-4 d-flex justify-content-center">
        <a 
          href="{{ c | slugify | url_encode | prepend: '/courses/' | append: '/' | relative_url }}" 
          class="btn btn-outline-primary position-relative px-4 py-2 w-100"
          style="max-width: 250px; border-radius: 0.5rem;"
          title="View all posts for {{ c }}"
        >
          {{ c }}
          <span 
            class="badge bg-primary rounded-pill position-absolute top-0 start-100 translate-middle"
            style="font-size: 0.75rem;"
            aria-label="Number of posts in {{ c }}"
          >
            {{ site.posts | where_exp: "item", "item.courses contains c" | size }}
          </span>
        </a>
      </div>
    {% endfor %}
  </div>


<div class="my-5"></div> 



<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-6225893138851886"
     crossorigin="anonymous"></script>
<ins class="adsbygoogle"
     style="display:block; text-align:center; margin: 30px 0;" 
     data-ad-layout="in-article"
     data-ad-format="fluid"
     data-ad-client="ca-pub-6225893138851886"
     data-ad-slot="1023470228"></ins>
<script>
     (adsbygoogle = window.adsbygoogle || []).push({});
</script>

---

> **Note:** This is **not** the official Rajasthan University website. This portal is created solely for educational purposes to help students with study materials.
