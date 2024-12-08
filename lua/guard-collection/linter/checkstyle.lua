local lint = require('guard.lint')
return {
  cmd = 'checkstyle',
  args = {
    '-c',
    'sun_checks.xml',
  },
  fname = true,
  regex = '%[(%w+)%]%s+:(%d+):(%d*):%s+(%w+)%[(.-)%]',
  groups = { 'severity', 'lnum', 'col', 'message', 'code' },
  severities = {
    ERROR = lint.severities.info,
    WARN = lint.severities.info,
    INFO = lint.severities.style,
  },
}
