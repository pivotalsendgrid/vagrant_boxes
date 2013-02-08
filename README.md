# SendGrid Vagrant Boxes

## Getting Started

Install prerequisites:

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](http://vagrantup.com/)
* [Bundler](http://gembundler.com/)

Clone the repo and run bundler:

    git clone git@github.com:sendgrid-ops/vagrant-boxes.git
    cd vagrant-boxes
    bundle install

## Building Base Boxes

List available base boxes:

    bundle exec vagrant basebox list

Build, export, and add a base box to Vagrant:

    rake build[<name>]

To build **all** base boxes, run the "build" task with no arguments:

    rake build
