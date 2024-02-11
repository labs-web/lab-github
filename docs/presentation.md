---
layout: presentation
order: 1
---

{% assign pages = site.pages | sort: "order" %}
{% for page in pages %}
{% if page.url != "/feed.xml" 
and page.url != "/assets/css/style.css" 
and  page.url != "/"  
and page.url != "/presentation.html" %}

<!-- page.content | markdownify -->
{{page.content }}

{% endif %}
{% endfor %}

 
 