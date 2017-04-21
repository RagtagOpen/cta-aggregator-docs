---
title: API Reference

language_tabs:
  - shell

toc_footers:
  - <a href='#'>Sign Up for a Developer Key</a>
  - <a href='https://github.com/tripit/slate'>Documentation Powered by Slate</a>

includes:
  - authentication
  - events
  - contacts
  - locations
  - errors

search: true
---

# Introduction

This API provides information about calls to action.  A call to action is
represented by the event resource.  An event resource has two related
resources: a contact and (optionally) a location.

The API follows the [JSON API spec](http://jsonapi.org/).  Feature like
pagination, filtering, and CRUDing resrouces are all implemented following the
conventions established in this spec.

