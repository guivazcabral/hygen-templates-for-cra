---
inject: true
before: export const
to: src/constants/index.js
---
export * from './<%= h.changeCase.lower(entity) %>.constants'