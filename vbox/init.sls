virtualbox:
  pkg:
    - installed 

# Install rvm and ruby for veewee
include:
  - vbox.rvm

ruby:
  cmd:
    - run
    - name: rvm install 1.9.2
    - user: vagrant
    - unless: test -d $HOME/.rvm/rubies/1.9.2
    - require:
      - cmd: rvm_bashrc
