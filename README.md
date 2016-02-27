# gundam-rails

Ruby on Rails example

## Run on local

```
$ rails s -b 0.0.0.0
```

## Run on docker

```
$ docker build -t gundam-rails .
$ docker run -it -d --name gundam-rails --link mongo:mongo -p 8080:3000 gundam-rails
```

## Run on cloud foundry

```
$ cf push
```
