---
to: src/reducers/<%= h.changeCase.lower(entity_plural) %>.reducer.js
---
import { <%= h.changeCase.lower(entity) %>Constants } from '../constants'

const initialState = {
  <%= h.changeCase.lower(entity_plural) %>: [],
  <%= h.changeCase.lower(entity) %>: {}
}

export function <%= h.changeCase.lower(entity_plural) %> (state = initialState, action) {
  switch (action.type) {
    case <%= h.changeCase.lower(entity) %>Constants.FETCH_REQUEST:
    case <%= h.changeCase.lower(entity) %>Constants.FETCH_FAILURE:
      return {
        ...state,
        <%= h.changeCase.lower(entity_plural) %>: []
      }
    case <%= h.changeCase.lower(entity) %>Constants.FETCH_SUCCESS:
      return {
        ...state,
        <%= h.changeCase.lower(entity_plural) %>: action.<%= h.changeCase.lower(entity_plural) %>
      }
    case <%= h.changeCase.lower(entity) %>Constants.GET_<%= h.changeCase.upper(entity) %>_REQUEST:
    case <%= h.changeCase.lower(entity) %>Constants.GET_<%= h.changeCase.upper(entity) %>_FAILURE:
    case <%= h.changeCase.lower(entity) %>Constants.CLEAR_<%= h.changeCase.upper(entity) %>:
      return {
        ...state,
        <%= h.changeCase.lower(entity) %>: {}
      }
    case <%= h.changeCase.lower(entity) %>Constants.GET_<%= h.changeCase.upper(entity) %>_SUCCESS:
      return {
        ...state,
        <%= h.changeCase.lower(entity) %>: action.<%= h.changeCase.lower(entity) %>
      }

    default:
      return state
  }
}
