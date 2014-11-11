/* CONTRIBUTE */

This is the contribute.md of Gulp Changelog. Great to have you here. Here are a few ways you can help make this project better!

# Contribute.md

## Team members

* Israel Sotomayor - sotoisra24@gmail.com

## Learn & listen

This section includes ways to get started with your open source project. Include links to documentation and to different communication channels:

* [Readme file](https://github.com/CloudManaged/gulp-changelog/blob/master/README.md)

## Adding new features

This section includes advice on how to build new features for the project & what kind of process it includes.

### This is how we like people to add new features:

Same way we use this project you will find more details on this section of the [README FILE](https://github.com/CloudManaged/gulp-changelog/blob/master/README.md#steps)

### This is how you write your commit message:

Same way we use this project you will find more details on this section of the [README FILE](https://github.com/CloudManaged/gulp-changelog/blob/master/README.md##this-is-how-you-write-your-commit-message)

#### References

[https://github.com/erlang/otp/wiki/Writing-good-commit-messages](https://github.com/erlang/otp/wiki/Writing-good-commit-messages)

[https://github.com/securactive/gitchangelog/blob/master/README.rst](https://github.com/securactive/gitchangelog/blob/master/README.rst)

[http://git-scm.com/book/ch5-2.html](http://git-scm.com/book/ch5-2.html)

### This is how we commit:

* Check for whitespaces errors `git diff —check`
* Chunk big commits into small and logics commits `git add —patch`

### This is how we label our issues on github:

* Each reported issue have to have a `type` label
* When you finish your change/fix/feature you should add the following label to the `issue` that generate that `branch`, `s:in-pull-request`

#### Priority

* p:blocker
* p:critical
* p:high
* p:low

#### Type

* t:feature
* t:bug
* t:task
* t:invalid
* t:question
* t:idea
* t:support

#### Status

* s:confirmed
* s:deferred
* s:in-pull-request
* s:in-progress
* s:incomplete
* s:rejected
* s:resolved
* s:needs-discussion
* s:help-needed

#### Information

* i:progress-25
* i:progress-50
* i:progress-75
* i:improvement

#### Audience

* a:admin
* a:consumer
* a:curator
* a:source

#### Effort

* e:1
* e:2
* e:3

### These are the updates we hope you make to the changelog:

Using `gulp` we should after we finish our new change/feature/fix inside our branch run `gulp` as following:

When we make backwards-compatible bug fixes

```
gulp patch
```

When we add functionality in a backwards-compatible manner

```
gulp minor
```

When we make incompatible API changes:

```
gulp major
```

This `gulp` commands will add a tag with the specific version according with the version in the file `package.json`

We are following here the conventions used on [Semantic Versioning 2.0.0](http://semver.org/)

# Bug triage

This is the filter you should add to your Github view when first load the `issue page`

```
is:open is:issue no:milestone 
```

So there will be there only the issues that require some actions to categorize them, that issues should be moved to an `milestone` previous discussion.

We will find the following `milestones`:

* Actual sprint (personalized name)
* Next tasks
    * This are the most important task after the `Actual sprint`
* Blue Sky
    * This are the task that will be doing in the future, they are important enough to be saved.
* Make people happy
    * And this are all that client request for changes

This three last milestone will remain in our system, however as soon as we finish the `Actual spring` we close it.

At least each reported bug have to have a `type` label attached to it and will be ideal if it have `priority` or other labels that could help us to keep the `issue list` as clean as possible

* You can close fixed bugs by testing old tickets to see if they are happening
* You can tag bugs following the label convention explained before
* You can remove duplicate bug reports
