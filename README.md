# CTA Aggregator Docs
Documentation for the cta-aggregator project

This repo uses [slate](https://github.com/lord/slate) to allow markdown-driven
documentation.  

The codebase for the CTA Aggregator is located here: https://github.com/RagtagOpen/cta-aggregator.

This docs site is deployed at https://ragtagopen.github.io/cta-aggregator-docs/.

## Setup

To run this project locally, install the dependencies and launch the server. To do this.
* In your terminal, at the root of this project, run `bundle install`.
* Once the depdencenies have been installed, run `bundle exec middleman server`.
* In your browser, navigate to `http://localhost:4567`.

## Deployments

There's a deployment script at the root of this project.  We do not currently
have a  way to automate updates to the documentation site.  So, after your
changes have been accepted and merged into master, you'll need to
pull the changes down to your local master branch and then run the deploy script.

* In your terminal, get on your master branch and make sure it's up to date with the remote.
* Run `bash deploy.sh`.
* In your browser, navigate [here](https://ragtagopen.github.io/cta-aggregator-docs) and verify that everything looks correct.


## To Do
* Show examples of what happens when user attempts to create duplicate record
* Show examples of what happens when user attempts to provide malformed request

## Troubleshooting
* If you are using homebrew and rbenv while running cta-aggregator-docs locally and encounter issues installing the correct Ruby version, try these three tactics in order, only moving to the next tactic if the previous does resolve the issue:
  * Upgrade rbenv and ruby-build:
    * Run `brew upgrade rbenv ruby-build`
  * Update the make file:
    * Run `which make`
    * Delete the file that prints after you run the above command
    * Run `brew update automake`
  * As a last resort, uninstall and reinstall rbenv:
    * Run `brew uninstall --force rbenv`
    * Run `brew install rbenv`
    * Run `rbenv init` and follow any resulting instructions
    * Close and re-open your terminal
    * Run `curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash` to verify that rbenv is working correctly
    * Run `gem install bundler`
