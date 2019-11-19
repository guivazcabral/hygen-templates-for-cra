---
to: src/actions/<%= h.changeCase.lower(entity) %>.actions.js
inject: true
after: export const
---
<% action = type === 'single item' ? 'get' : 'fetch' -%>
<% actionObject = type === 'single item' ? h.changeCase.title(object) : h.changeCase.title(h.inflection.pluralize(object)) -%>
  <%= action %><%= actionObject %>,
