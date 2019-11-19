---
inject: true
to: src/reducers/index.js
before: export default
---
import { <%= h.changeCase.lower(entity_plural) %> } from './<%= h.changeCase.lower(entity_plural) %>.reducer'