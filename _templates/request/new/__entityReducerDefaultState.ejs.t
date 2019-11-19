---
to: src/reducers/<%= h.inflection.pluralize(entity.toLowerCase()) %>.reducer.js
inject: true
after: initialState
---
<% actionObject = type === 'single item' ? h.changeCase.title(object) : h.changeCase.title(h.inflection.pluralize(object)) -%>
  <%= actionObject.toLowerCase() %>: <%= type === 'single item' ? '{}' : '[]' %>,
