`sed` - streamed editor command is used for strings & files handling.

Usages: 
 - extracting substring using regex pattern
 - substituting and reforming new strings

```sed "s/\(.*\)\/\(.*\..*\.[A-Za-z]*\)\/\(.*\)/\2/")```
The above command extracts domain from any url string. Parenthesis `()` of regex group are escaped in regex pattern in sed command.