---
inject: true
append: true
to: src/actions/index.js
---
export * from './<%= h.changeCase.lower(entity) %>.actions'