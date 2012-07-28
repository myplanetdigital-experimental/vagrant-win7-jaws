Windows 7 Enterprise - JAWS
===========================

This project aims to create a Vagrant environment for booting a Windows VM
with the JAWS screenreading software installed. It can also be used to
do effective cross-browser testing between VM's.

Requirements
------------

This process has been tested only on Mac OSX Snow Leopard. It likely
won't work on other systems.

Generate base box
-----------------

You'll first need to download the Windows 7 Enterprise 64-bit ISO into
`veewee/iso` (you'll need to sign in with a Windows Live Passport):

http://technet.microsoft.com/en-us/evalcenter/cc442495.aspx

This installer will create a basebox that will expire after 90 days, so
the basebox might need to be regenerated after this period. You can do
so by following the following instructions.

    git clone https://github.com/patcon/veewee.git --branch GH-345-win7-ent64-fix
    cd veewee
    gem regenerate_binstubs
    bundle install
    veewee vbox define win-crossbrowser windows-7-enterprise-amd64
    veewee vbox build win-crossbrowser
    vagrant package win-crossbrowser --base=win-crossbrowser --output=win7-enterprise64.box
    vagrant box add win7-enterprise64 win7-enterprise64.box

Provision base box
------------------

First download and install v1.5 of the Heimdal binaries in DMG format:

http://www.h5l.org/dist/src/

    git clone _____
    cd ___
    bundle install
    gem regenerate_binstubs
    librarian-chef install
    vagrant up
