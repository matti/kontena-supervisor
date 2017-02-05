# kontena-supervisor

A simple app to show current instance number + ENV's, deployed on each node as a daemon.

```
bin/run develop
bin/run
```

## pls
 - docker-compose run can not have volumes .. https://github.com/docker/compose/issues/363
 - docker-compose && byebug doesn't work even if tty: true, stdin_open: true & docker attach
