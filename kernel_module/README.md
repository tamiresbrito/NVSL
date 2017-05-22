To compile
~~~
make
~~~

To insert Module into Kernel
~~~
sudo insmod thread.ko myint=x
dmesg | tail
~~~
where x is an integer.

To remove Module from Kernel
~~~
sudo rmmod thread.ko
dmesg | tail
~~~
