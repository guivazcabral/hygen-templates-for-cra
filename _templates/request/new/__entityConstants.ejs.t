---
to: src/constants/<%= h.changeCase.lower(entity) %>.constants.js
inject: true
after: export const
---
<% action = type === 'single item' ? 'GET' : 'FETCH' -%>
<% actionObject = type === 'single item' ? object : h.inflection.pluralize(object) -%>
<%= action %>_<%= actionObject.toUpperCase() %>_REQUEST: '<%= action %>_<%= actionObject.toUpperCase() %>_REQUEST',
<%= action %>_<%= actionObject.toUpperCase() %>_SUCCESS: '<%= action %>_<%= actionObject.toUpperCase() %>_SUCCESS',
<%= action %>_<%= actionObject.toUpperCase() %>_FAILURE: '<%= action %>_<%= actionObject.toUpperCase() %>_FAILURE',
