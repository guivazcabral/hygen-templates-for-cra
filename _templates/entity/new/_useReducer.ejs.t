---
inject: true
to: src/reducers/index.js
after: export default
---
  <%= h.changeCase.lower(entity_plural) %>,