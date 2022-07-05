# README

'starter-app' is a minimal rails app with most gems skipped.

It includes application gems like:

* [High Voltage](https://github.com/thoughtbot/high_voltage) for static pages
* [appengine-ruby](https://github.com/GoogleCloudPlatform/appengine-ruby) optional integration library for the Ruby runtime for Google App Engine

And development gems like:

* [RuboCop](https://github.com/rubocop/rubocop) for static code analysis and formatting

Possible future add-ons:

* [prometheus_exporter](https://github.com/thoughtbot/prometheus_exporter) for collecting and aggregating prometheus metrics


## Build and deploy

See [config/deployment](config/deployment) for details.


## References

* [Ruby runtimes on Google App Engine](https://cloud.google.com/appengine/docs/standard/ruby/runtime)
* [sclorg/rails-ex](https://github.com/sclorg/rails-ex) deployment on Red Hat OpenShift


## Other

### Setup

#### Initial creation

```shell
rails new . --minimal
```

#### Checks before committing

```shell
bundler exec rubocop -a
```

#### Credentials etc ...

```shell
bundler rails credentials:edit

```
