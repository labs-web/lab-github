---
layout: presentation
order: 1
---

{% assign pages = site.pages | sort: "order" %}
{% for page in pages %}
 {% if page.chapitre and page.chapitre != "Rappele markdown" %}
    {{- page.content | markdownify -}}
  {% endif %}
{% endfor %}