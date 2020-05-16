---
layout: default
---

# Projects
<ul id="projects">
{% for project in site.data.projects %}
  <li>
    <a href="{{ project.url }}">{{ project.name }}</a> {{ project.desc }}
  </li>
{% endfor %}
</ul>

# Posts
<ul id="posts">
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}"><span style="font-weight: bold">{{ post.date | date: "%Y-%m-%d" }}</span> {{ post.title }}</a>
    </li>
  {% endfor %}
</ul>
