Sound Cloud Paginator
=====================

A cli (and eventually web facing) app to extract your favorites from soundcloud because endless scrolling is incredibad.

Installation
------------

This is a ruby app, so:

* Use your weapon of choice (system ruby, rvm, rbenv)
* Optionally `gem install bundler` if its not setup already.
* `bundle install`

Configuring
-----------

Edit `sound_page.sh` with your applications **Client ID** and **Client Secret** from the soundcloud developers page. (This won't be needed when I turn it into a web app)

Running
-------

Just run `sound_page.sh` and enter your username and password when prompted. Afterwards your favorites will be saved into `favorites.json`

License
-------

    Sound Cloud Paginator is released under the MIT License Copyright (c) 2016 Kevin Alford.

Sound Cloud Paginator makes use the [Soundcloud API](https://github.com/soundcloud/soundcloud-ruby) released under the MIT License.
