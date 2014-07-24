# Vagrantfile with CentOS 6.5/ruby 2.1.2/MySQL/Nginx

_Description: Vagrantfile with CentOS 6.5/ruby 2.1.2/rvm/MySQL/Nginx

## Project Setup

 1. Download and install Vagrant http://www.vagrantup.com/

 2. Download and install VirtualBox https://www.virtualbox.org/

 3. `brew install python`

 4. `sudo easy_install pip`

 5. `sudo pip install ansible`

 6. `git clone https://github.com/morizyun/vagrant-ansible-rails`

 7. `cd vagrant-ansible-rails`

 8. `chmod a+x set_vagrant.sh && ./set_vagrant.sh`

 9. `export ANSIBLE_HOSTS=./ansible/hosts_vagrant`

10. `ansible-playbook ./ansible/playbook_vagrant.yml`

11. create rails project

```
vagrant ssh
cd /var/rails
export rvmsudo_secure_path=1
rvmsudo gem install rails bundler --no-ri --no-rdoc
rails new sample --database=mysql 
cd sample
echo "gem 'therubyracer', platforms: :ruby" >> Gemfile
bundle install
bundle exec rake db:create
rails s
```

12. Browsing `http://192.168.33.10/`

## Basic information

1. Sync Folder(Sever - Local) : `/vagrant/app` - `app/`

2. MySQL ROOT PASS : ``(nothing)
