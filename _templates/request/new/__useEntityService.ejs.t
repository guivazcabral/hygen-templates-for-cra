---
to: src/services/<%= h.changeCase.lower(entity) %>.service.js
inject: true
after: export const
---
<% action = type === 'single item' ? 'get' : 'fetch' -%>
<% actionObject = type === 'single item' ? h.changeCase.title(object) : h.changeCase.title(h.inflection.pluralize(object)) -%>
  <%= action %><%= actionObject -%>,
