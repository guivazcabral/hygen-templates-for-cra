---
to: src/services/<%= h.changeCase.lower(entity) %>.service.js
---
import { http } from '../helpers'

export const <%= entity %>Service = {
  fetch,
  get<%= h.changeCase.title(entity) %>
}

function fetch () {
  return http.get('<%= endpoint %>')
}

function get<%= h.changeCase.title(entity) %> (<%= h.changeCase.lower(entity) %>Id) {
  return http.get(`<%= endpoint %>/${<%= h.changeCase.lower(entity) %>Id}`)
}
