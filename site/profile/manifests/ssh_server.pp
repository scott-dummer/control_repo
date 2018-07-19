class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure  => present,
                user    => 'root',
                type    => 'ssh-rsa',
                key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDg+p9Y+qhBgVtJRghEhDmwdncd9nT58+qYLcPy1vKB4nAe+9P7tiNCaMYvh2g/0CZFrYE1Dw+DdVCTWIl/xpuf7ey/BGD2US0W6YT2cL8/QynenJBrI+n5H2gxckrADWQDMLXRwdVbAC9aFPa6x6pErfU5TbE1C3BB3F74kS5l59u976p1S93Odd+b8AHTKATr6NIJlJ+h8Bhw7qf3wsay6mTqAaZHNBhCVmcH5TgnqOknHYvuf60OQOZ+dNXTpYGmBS4/rF1Rms7HI9kY276VsQzNjbwvNRDgLAGWyH8od8emyQi3xoLlO4avPgX4zxvseFWspWSFVHptIAslguZL',
        }
}
