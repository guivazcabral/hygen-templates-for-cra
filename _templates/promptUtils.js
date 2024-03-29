module.exports = questions => ({ prompter, args }) => {
  const providedArgs = questions.reduce((selectedArgs, question) => {
    if (args[question.name]) selectedArgs[question.name] = args[question.name]
    return selectedArgs
  }, {})
  return prompter
  .prompt(questions.filter(({ name }) => !providedArgs[name]))
  .then(answers => ({ ...answers, ...providedArgs }))
}
