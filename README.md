# CTA Aggregator Docs
Documentation for the cta-aggregator project

This repo uses [slate](https://github.com/lord/slate) to allow markdown-driven 
documentation.  

The codebase for the CTA Aggregator is located here: https://github.com/Ragtagteam/cta-aggregator.

## Setup

To run this project locally, install the dependencies and launch the server
* bundle install
* bundle exec middleman server
* in your browser, navigate to `http://localhost:4567`.

## To Do
* Swap out references to `localhost:3000` with references to prod host name
* Show examples of what happens when user attempts to create duplicate record 
* Show examples of what happens when user attempts to  provide malformed request
* Write documentation for remainder of CRUD operations for each resource
* Add in Python, Ruby, JS versions of http requests?
