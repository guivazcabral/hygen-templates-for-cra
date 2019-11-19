---
inject: true
append: true
to: src/services/index.js
---
export * from './<%= h.changeCase.lower(entity) %>.service'