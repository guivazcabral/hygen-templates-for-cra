---
to: src/actions/<%= h.changeCase.lower(entity) %>.actions.js
inject: true
append: true
---
<% entity_plural = h.inflection.pluralize(entity) -%>
<% action = type === 'single item' ? 'get' : 'fetch' -%>
<% actionObject = type === 'single item' ? h.changeCase.title(object) : h.changeCase.title(h.inflection.pluralize(object)) -%>

function <%= action %><%= actionObject %> (<%= h.changeCase.lower(entity) %>Id, options) {
  return dispatch => {
    dispatch(request())

    return <%= h.changeCase.lower(entity) %>Service.<%= action %><%= actionObject %>(<%= h.changeCase.lower(entity) %>Id, options)
    .then(
      response => {
        const <%= entity_plural %> = response.data
        dispatch(success(<%= entity_plural %>))
      }
    )
    .catch(error => {
      dispatch(failure(error))
      dispatch(alertActions.error(error))
    })
  }

  function request () { return { type: <%= h.changeCase.lower(entity) %>Constants.<%= action.toUpperCase() %>_<%= actionObject.toUpperCase() %>_REQUEST } }
  function success (data) { return { type: <%= h.changeCase.lower(entity) %>Constants.<%= action.toUpperCase() %>_<%= actionObject.toUpperCase() %>_SUCCESS, data } }
  function failure (error) { return { type: <%= h.changeCase.lower(entity) %>Constants.<%= action.toUpperCase() %>_<%= actionObject.toUpperCase() %>_FAILURE, error } }
}
