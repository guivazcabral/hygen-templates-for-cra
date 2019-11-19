---
to: src/constants/<%= h.changeCase.lower(entity) %>.constants.js
---
export const <%= h.changeCase.lower(entity) %>Constants = {
  FETCH_REQUEST: 'FETCH_<%= h.changeCase.upper(entity) %>_REQUEST',
  FETCH_SUCCESS: 'FETCH_<%= h.changeCase.upper(entity) %>_SUCCESS',
  FETCH_FAILURE: 'FETCH_<%= h.changeCase.upper(entity) %>_FAILURE',
  CLEAR_<%= h.changeCase.upper(entity) %>: 'CLEAR_<%= h.changeCase.upper(entity) %>'
}
