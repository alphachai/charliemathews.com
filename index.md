---
layout: default
---

## Projects

<div id="projects_display">
{% for project in site.data.projects %}
  <div class="project">
    <div class="box project_inner clear">
      <div class="name clear">
        <a href="{{ project.url }}">{{ project.name }}</a>
      </div>
      <div class="desc clear">{{ project.desc }}</div>
    </div>
  </div>
{% endfor %}
</div>

<!-- <hr class="underline"> -->

<!-- ## Timeline

<ul id="feed">
  {% for post in site.posts %}
  {% if post.hidden != true %}
    <li>
      <a href="{{ post.url }}"><span style="font-weight: bold">{{ post.date | date: "%Y-%m-%d" }}</span> {{ post.title }} ({{ post.layout }})</a>
    </li>
  {% endif %}
  {% endfor %}
</ul> -->
