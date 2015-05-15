TYPO3 7.2.0 + TYPO3.Themes

#TYPO3.Themes Vagrant package

###What is it?
Package to quick deploy **TYPO3.Themes** on virtual machine.

**Vagrant** config + **Shell** Provisioner + **Bower** components + **Composer** components

### Requirements

- VirtualBox <http://www.virtualbox.com>
- Vagrant <http://www.vagrantup.com>
- Git <http://git-scm.com/>
- Bower <http://bower.io/>
- Composer <https://getcomposer.org/>

### Usage

```
git clone ....................
cd ........
bower install
cd typo3
composer install
cd ..
cd public/typo3conf
bower install
cd -
vagrant up
```

To stop Vagrant VM: `vagrant destroy`

Status:  `vagrant status`

Open SSH session: `vagrant ssh`

### Connecting

Apache server is available at http://192.168.33.200

Web root: `/var/www/public/`

MySQL

- Username: root
- Password: 1234
- DB name: typo3

TYPO3

- TYPO3 login: admin
- TYPO3 password: admin1234
- TYPO3 install tools password: admin1234

### Vagrant box: typo3box-v1.box: <https://www.dropbox.com/s/a8mgflj93nvfxgh/typo3box-v1.box?dl=0/>

### Installed Components.
- Ubuntu 14.04 64-bit (Trusty)
- Apache 2
- PHP 5.5
- MySQL 5.5
- git
- Imagemagick

##Important

Don't forget to change __ip__ address for your virtual machine, if you have several of them based on this package.
`config.vm.network "private_network", ip: "your new IP"`

Also you can change name of VM:

`config.vm.define "VM name" do |typo3|`
