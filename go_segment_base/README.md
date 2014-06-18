## Go Segment Base Box

This box is built using `vagrant` and `vagrant package`:

1. Make sure your workstation is setup according to the [workstation setup](https://github.com/sendgrid-ops/workstation_setup) repo
1. `cd` into this directory (go_segment_base), and run `vagrant up`
1. Run `vagrant up`
1. While the vagrant VM is still running, run `vagrant package --output go-segment-base.box`
1. This will put a `go-segment-base.box` file in the current directory
1. Import and Upload it as usual using the `thor` commands in the main [README](../README.md)
