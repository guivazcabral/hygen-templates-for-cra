---
to: src/reducers/<%= h.inflection.pluralize(entity.toLowerCase()) %>.reducer.js
inject: true
before: default
---
<% action = type === 'single item' ? 'GET' : 'FETCH' -%>
<% actionObject = type === 'single item' ? h.changeCase.title(object) : h.changeCase.title(h.inflection.pluralize(object)) -%>
    case <%= entity.toLowerCase() %>Constants.<%= action %>_<%= actionObject.toUpperCase() %>_REQUEST:
    case <%= entity.toLowerCase() %>Constants.<%= action %>_<%= actionObject.toUpperCase() %>_FAILURE:
      return {
        ...state,
        <%= actionObject.toLowerCase() %>: <%= type === 'single item' ? '{}' : '[]' %>
      }
    case <%= entity.toLowerCase() %>Constants.<%= action %>_<%= actionObject.toUpperCase() %>_SUCCESS:
      return {
        ...state,
        <%= actionObject.toLowerCase() %>: action.data
      }
