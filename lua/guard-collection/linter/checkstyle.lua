local lint = require('guard.lint')

return {
  cmd = 'checkstyle',
  args = {
    '-c',
    'sun_checks.xml',
  },
  fname = true,
  regex = '%[(%w+)%]%s+.-:(%d+):?(%d*):%s+(.-)%s+%[(.-)%]',
  groups = { 'severity', 'lnum', 'col', 'message', 'code' },
  severities = {
    ERROR = lint.severities.error,
    WARN = lint.severities.warning,
    INFO = lint.severities.info,
    DEBUG = lint.severities.style,
  },
}
