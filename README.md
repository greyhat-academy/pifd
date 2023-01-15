# pifd
### Post-Install Fast Deploy
##### automagically install a feckton of essential Linux Desktop apps in the background.

## Goal
### pifd should automate the installation of essential apps 
Similar to several post-installation applications that do this on Windows, like [com! Update Pack Builder](https://www.com-magazin.de/news/business-it/servihttps://www.com-magazin.de/news/business-it/service-pack-fuer-alle-systeme-7137.htmlce-pack-fuer-alle-systeme-7137.html).

In essence, it should be a simple one-click & run shell script that
- calls other shell scripts which for each application
  - add the repos & pubkeys
  - install the app & dependencies
  - do some necessary changes if need be
##### It is intended to jut be run fully automated after the initial selection.

#
## Distro Support
- Ubuntu
  - 22.04 LTS
#### While the project maintainer always aims to support the latest released Ubuntu LTS version, this approach can also support other distros.

### Contributors are invited to support and maintain other distros.
#
##  Supported Applications
####  Right now only a few applications are being supported. A [full list can be found here](pifd.apps.list.tsv).
