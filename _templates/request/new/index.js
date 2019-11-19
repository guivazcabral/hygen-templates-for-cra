const promptArgs = require('../../promptUtils')

const questions = [
  {
    type: 'input',
    name: 'entity',
    message: 'Which entity (must already exist, lowercase, singular)?'
  },
  {
    type: 'input',
    name: 'object',
    message: 'What will you be fetching (kebab-case, singular)?'
  },
  {
    type: 'select',
    name: 'type',
    message: 'Are you fetching a single item or a collection of items?',
    choices: ['single item', 'collection of items']
  }
]

module.exports = {
  prompt: promptArgs(questions)
}
