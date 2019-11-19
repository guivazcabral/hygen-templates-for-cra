---
to: src/actions/<%= h.changeCase.lower(entity) %>.actions.js
---
import { <%= h.changeCase.lower(entity) %>Constants } from '../constants'
import { <%= h.changeCase.lower(entity) %>Service } from '../services'
import { alertActions } from './'

export const <%= h.changeCase.lower(entity) %>Actions = {
  fetch,
  get<%= h.changeCase.title(entity) %>,
  clear<%= h.changeCase.title(entity) %>
}

function fetch () {
  return dispatch => {
    dispatch(request())
    dispatch(clear<%= h.changeCase.title(entity) %>())

    return <%= h.changeCase.lower(entity) %>Service.fetch()
    .then(
      response => {
        const <%= h.changeCase.lower(entity) %>s = response.data
        dispatch(success(<%= h.changeCase.lower(entity) %>s))
      }
    )
    .catch(error => {
      dispatch(failure(error))
      dispatch(alertActions.error(error))
    })
  }

  function request () { return { type: <%= h.changeCase.lower(entity) %>Constants.FETCH_REQUEST } }
  function success (<%= h.changeCase.lower(entity) %>s) { return { type: <%= h.changeCase.lower(entity) %>Constants.FETCH_SUCCESS, <%= h.changeCase.lower(entity) %>s } }
  function failure (error) { return { type: <%= h.changeCase.lower(entity) %>Constants.FETCH_FAILURE, error } }
}

function get<%= h.changeCase.title(entity) %> (<%= h.changeCase.lower(entity) %>Id) {
  return dispatch => {
    dispatch(request())

    return <%= h.changeCase.lower(entity) %>Service.get<%= h.changeCase.title(entity) %>(<%= h.changeCase.lower(entity) %>Id)
    .then(
      response => {
        const <%= h.changeCase.lower(entity) %> = response.data
        dispatch(success(<%= h.changeCase.lower(entity) %>))
      }
    )
    .catch(error => {
      dispatch(failure(error))
      dispatch(alertActions.error(error))
    })
  }

  function request () { return { type: <%= h.changeCase.lower(entity) %>Constants.GET_<%= h.changeCase.upper(entity) %>_REQUEST } }
  function success (<%= h.changeCase.lower(entity) %>) { return { type: <%= h.changeCase.lower(entity) %>Constants.GET_<%= h.changeCase.upper(entity) %>_SUCCESS, <%= h.changeCase.lower(entity) %> } }
  function failure (error) { return { type: <%= h.changeCase.lower(entity) %>Constants.GET_<%= h.changeCase.upper(entity) %>_FAILURE, error } }
}

function clear<%= h.changeCase.title(entity) %> () {
  return {
    type: <%= h.changeCase.lower(entity) %>Constants.CLEAR_<%= h.changeCase.upper(entity) %>
  }
}
