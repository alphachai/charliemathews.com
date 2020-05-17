---
layout: default
---

## Projects

<div id="projects_display">
{% for project in site.data.projects %}
  <div class="project">
    <div class="project_inner clear">
      <div class="name clear">
        <div class="icon_wrap"><svg title="Github" class="icon icon_github"><use xlink:href="{{ "static/img/icons.svg" | relative_url }}#logo-github"/></svg></div>
        <a href="{{ project.url }}">{{ project.name }}</a>
      </div>
      <div class="desc clear">{{ project.desc }}</div>
    </div>
  </div>
{% endfor %}
</div>

## Posts

<ul id="posts">
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}"><span style="font-weight: bold">{{ post.date | date: "%Y-%m-%d" }}</span> {{ post.title }}</a>
    </li>
  {% endfor %}
</ul>
