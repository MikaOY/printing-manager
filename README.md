
# FlowJob

Website of a platform monitoring 3D printing jobs, filament usage, and 3D printers.


### Contributors:
Coded with <3 by [@MikaOY](https://github.com/MikaOY) and [@omnikitty](https://github.com/omnikitty).

### UPDATES:

*2018-01-01: Styling*
We set up the main styling aspects of the site, so you can actually use it now without getting an aneurysm.

## Get started

Clone the repository, and...
```
bundle install
rake db:migrate
```

## Debugging commands

`rails s` launches a web server where you can view the site at localhost:3000

`rake routes` allows you to view all URLs accepted by the API

## Reference

Getting the DB straight once migrations are in order:   
`rake db:drop db:create db:migrate db:seed`
