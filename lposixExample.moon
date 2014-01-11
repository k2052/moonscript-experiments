rex = require 'rex_pcre'
inspect = require 'inspect'

pat = rex.new('[ \t]+$')
str = rex.gsub('cats   ',  '[ \t]+$', 'dog')
print(str)

weights = 'normal|bold|bolder|lighter|[1-9]00'
styles  = 'normal|italic|oblique'
units   = 'px|pt|pc|in|cm|mm|%'
string  = '\'([^\']+)\'|"([^"]+)"|[\\w-]+'

regexstring = '^ *' .. '(?:(' .. weights .. ') *)?'
regexstring .. '(?:(' .. styles .. ') *)?' .. '([\\d\\.]+)(' .. units .. ') *'
regexstring .. '((?:' .. string .. ')( *, *(?:' .. string .. '))*)'

fontre = rex.new(regexstring)

out = {}
i = 0
for token in string.gmatch('cats,   dogs  ', "[^%,]+") do
  i = i + 1
  out[i] = token\gsub("^%s*(.-)%s*$", "%1")

print(inspect(out))
tokens = string.gmatch('cats,   dogs  ', "[^%,]+")
print(tokens)
