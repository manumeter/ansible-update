# Server Upgrade with Ansible

Script to check for new packages on servers and upgrade them. It uses Ansible
and keybased login through SSH. It supports APT and YUM as package manager, so
it should work on several distibutions (tested on Red Hat and Debian).

## ./upgrade.sh --check

Will send a mail to the *admin_mail* address if *mail_info* is *yes* and package
updates are needed.

## ./upgrade.sh --install

Will install all package updates and checks if a reboot is required. It will
then send a mail to the *admin_mail* address if *mail_info* is *yes* with what
was installed (output of APT/YUM). If a reboot is required and *auto_reboot* is
*no*, it will send an(other) mail to *admin_mail*, otherwise it will reboot the
machine.
