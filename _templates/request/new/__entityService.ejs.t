---
to: src/services/<%= h.changeCase.lower(entity) %>.service.js
inject: true
append: true
---
<% action = type === 'single item' ? 'get' : 'fetch' -%>
<% actionObject = type === 'single item' ? h.changeCase.title(object) : h.changeCase.title(h.inflection.pluralize(object)) -%>
<% endpoint = '`/' + h.changeCase.lower(h.inflection.pluralize(entity)) + '/${' + h.changeCase.lower(entity) + 'Id}/' + actionObject.toLowerCase() + '`' -%>

function <%= action %><%= actionObject %> (<%= h.changeCase.lower(entity) %>Id, options = {}) {
  return http.get(<%= endpoint %>, { params: { ...options } })
}
