---
title: API Reference

language_tabs:
  - shell
  - ruby

toc_footers:
  - <a href='#'>Sign Up for a Developer Key</a>
  - <a href='https://github.com/tripit/slate'>Documentation Powered by Slate</a>

includes:
  - authentication
  - events
  - locations
  - advocacy_campaigns
  - targets
  - errors
  - embedding

search: true
---

# Introduction

This API provides information about calls to action (CTAs).  It uses the data modelling
outlined in the [Open Source Data Interface](https://opensupporter.github.io/osdi-docs/).
All resources in the API are OSDI compliant.

The CTA Aggregator does deviate from OSDI when it comes to data presentation. Whereas the
OSDI standard leverages HAL+JSON](https://tools.ietf.org/html/draft-kelly-json-hal-05) to
repsesent resources, the CTAAggrategor uses the [JSON API spec](http://jsonapi.org/).  
Feature like pagination, filtering, and CRUDing resrouces are all implemented following the 
conventions established in this spec.

The CTA Aggregator has to top-level resources: Events and Advocacy Campaigns.
An event is a call to action that asks people to show up a particular location.
And advocacy campaign is a call to action that requests that people send an email or make a
phone call.

You can interact with the API directly or use the Ruby gem, located here: [https://github.com/Ragtagteam/cta-aggregator-client-ruby](https://github.com/Ragtagteam/cta-aggregator-client-ruby/).
