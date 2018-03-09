# ISSA - Northeastern Student Chapter March Workshop

Am I geared like a vagrant?

## Install vagrant

Find the appropriate package for your operating system here: [Download - Vagrant by HashiCorp](https://www.vagrantup.com/downloads.html)

After installing the downloaded package, run
```
vagrant --version
```
to verify that your vagrant instance is working.

## Install virtualbox

Install the latest version of virtualbox from here: [Downloads – Oracle VM VirtualBox](https://www.virtualbox.org/wiki/Downloads)

## Download the vagrant box configurations

Clone the repository via `https://github.com/ISSA-NU/vagrant_boxes.git`

Now, you should have two vagrant box configurations in your local disk: `ubuntu32` and `ubuntu64`.

Change your directory to `ubuntu32`, and run

```bash
vagrant up
```
to bring up the virtual machine.

After a few minutes of bootstrap, your vagrant box is ready.

Do the same thing for `ubuntu64`.

## Log into your vagrant box

In the `ubuntu32` or `ubuntu64` directory, do

```bash
vagrant ssh
```

to login.

After logging into the vm, verify that in the vagrant home directory, there is a `buffer_overruns` subdirectory where all the materials needed for this workshop are stored.

## Provision

In the `ubuntu32` or `ubuntu64` directory, do

```bash
vagrant provision
```

to rerun provision.

Or, do

```bash
vagrant up --provision
```

to run provision while bringing up the box.