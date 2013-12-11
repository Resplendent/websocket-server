{spawn, exec} = require 'child_process'
{noisyExec} = require 'tafa-misc-util'

task 'dev', () ->
    noisyExec "coffee -cwo lib src"
    noisyExec "hotnode lib/server.js"

