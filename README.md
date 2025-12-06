# http_goats.cr
Web-API for [httpgoats.com](https://httpgoats.com/) goats for every HyperText Transfer Protocol response status code

## Example
```cr
require "./http_goats"

http_goats = HttpGoats.new
status = http_goats.get_status(403)
puts status
```
