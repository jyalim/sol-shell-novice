---
layout: page
title: Setup
root: .
---

## Preliminary 
Before obtaining a shell on the Sol supercomputer, several items must be
in check:

1. Make sure you have a Sol account. If you have not already, please
   fill out an [account request](https://links.asu.edu/getHPC) with your
   faculty sponsor listed (faculty may list themselves as sponsors).
2. Upon receiving a confirmation email of account activation, you will
   have the ability to connect to the supercomputer. However, you may
   only access the supercomputer through the "Cisco" Virtual Private Network
   (Cisco VPN). If you are unfamiliar with the process, please visit
   [sslvpn.asu.edu](https://sslvpn.asu.edu), which will guide you
   through the installation process of the necessary software. Once the
   software is installed and running, it will prompt you for a
   webaddress, specify [sslvpn.asu.edu/2fa](sslvpn.asu.edu/2fa) and
   proceed through the steps. *Note: if you are accessing the
   supercomputer from the ASU network you may still need the VPN*.
3. With an account created and the VPN running, you should now have
   access to the supercomputer. From the Windows 10 command prompt or
   MacOS or Linux terminal you should be able to connect to the
   supercomputer with the shell command: `ssh <asurite>@sol.asu.edu`,
   where `<asurite>` is a placeholder for *your* asurite username. This
   method is the traditional way of obtaining a shell on the
   supercomputer!

## I have access, now what?

The recommended way to learn how to use the supercomputer and gain
access to a system shell is through the 
[web portal](https://sol.asu.edu).  The web portal backend is maintained
by the [Ohio Supercomputing Center](https://openondemand.org/) and is
actively funded by the National Science Foundation. The web portal is
operating system (OS) independent (the browser Chrome is recommended,
followed by Brave or Firefox), and supplants a number of OS-dependent
applications that would have been necessary to interact with the
supercomputer otherwise. To obtain the shell through the 
[web portal](https://sol.asu.edu), find the `Clusters` tab within the
navigation bar at the top of the webpage, and from the submenu, select
`>_ Sol Shell Access`.  Those that are feeling more confident may gain a
shell on the supercomputer through other means, such as an `ssh` session
via a terminal, as indicated in step 3 in the previous section.

## Workshop Setup

Once on Sol and within a shell, you will need to download some files to
follow the lesson.  Below are instructions that will be covered during
the lesson.

1. Download [data-shell.zip]({{ page.root }}/data/data-shell.zip) and
   move the file to your Desktop. This can be done using `wget`.  Ask:
   how did I get the link for the required zip?
2. Unzip/extract the file.   You should end up with a new folder called
   **data-shell** on your Desktop.

~~~
$ mkdir ~/Desktop  
$ cd ~/Desktop  
$ wget https://github.com/jyalim/sol-shell-novice/raw/gh-pages/data/data-shell.zip    
$ unzip data-shell.zip   
~~~
{: .language-bash}

## Additional Help

This workshop is supplemental to our [official documentation
(http://links.asu.edu/docs)](https://links.asu.edu/docs). 

Please note that we have office hours every Tuesday from 1:00-3:30PM
over zoom (and at the same time Wednesday during the regular semester).
We are happy to answer any and all questions during these sessions.

We also host a number of workshops over the year, which are listed on
our official documentation:
[http://links.asu.edu/learn](https://links.asu.edu/learn).

We also have specific tutorial pages, and a small sampling are featured
below:

* [New User Guide](https://asurc.atlassian.net/wiki/spaces/RC/pages/1642692609/New+User+Guide+for+Sol+Compute+Resources)
* [Understanding the status page](https://asurc.atlassian.net/wiki/spaces/RC/pages/1839464450/Understanding+the+Status+Page+and+Private+Nodes) 
* [Using Mamba Environments](https://links.asu.edu/mamba)

> ## What does the shell look like on my computer?
> The shell is a program that enables us to send commands to the
> computer and receive output. It is also referred to as the terminal or
> command line.
>
> For the entirety of this lesson, we'll be working on the Sol
> supercomputer, which is comprised of Linux CentOS 8 systems and
> provides its own shell interface. 
> 
> However, many operating systems support the shell we will encounter
> today. The text below is included from the original Software
> Carpentries lesson to provide context to those local shells.
>
> Some computers include a default Unix Shell program.  The steps below
> describe some methods for identifying and opening a Unix Shell program
> if you already have one installed.  There are also options for
> identifying and downloading a Unix Shell program, a Linux/UNIX
> emulator, or a program to access a Unix Shell on a server.
>
> If none of the options below address your circumstances, try an online
> search for: Unix shell [your computer model] [your operating system].
>
> ### Linux
> The default Unix Shell for Linux operating systems is usually Bash.
> On most versions of Linux, it is accessible by running the [(Gnome)
> Terminal](https://help.gnome.org/users/gnome-terminal/stable/) or
> [(KDE) Konsole](https://konsole.kde.org/) or
> [xterm](https://en.wikipedia.org/wiki/Xterm), which can be found via
> the applications menu or the search bar.
>
> If your machine is set up to use something other than Bash, you can
> run it by opening a terminal and typing `bash`.
>
> ### macOS
> For a Mac computer running macOS Mojave or earlier releases, the
> default Unix Shell is an older version of Bash.  
> 
> For a Mac computer running macOS Catalina or later releases, the
> default Unix Shell is Zsh.  
> 
> Your default shell is available via the Terminal program within your
> Utilities folder. Alternative shells are available upon install, such
> as [iterm2](https://www.iterm2.com/).
>
> To open Terminal, try one or both of the following:
> * In Finder, select the Go menu, then select Utilities. Locate
>   Terminal in the Utilities folder and open it.
> * **Recommended** Use the Mac 'Spotlight' computer search function
>   (<kbd>Command</kbd>+<kbd>space bar</kbd>).  Search for: `Terminal`
>   and press <kbd>return</kbd>.
>
> To check if your machine is set up to use something other than Bash,
> type `echo $SHELL` in your terminal window.
>
> If your machine is set up to use something other than Bash, you can
> run it by opening a terminal and typing `bash`.
>
> While newer versions of MacOS use `Zsh` as a default, it is recommend
> to become familiar with a newer version of `Bash`, if possible, as it
> is the default across the majority of Linux systems.
>
> #### Reference
> [How to Use Terminal on a Mac](http://www.macworld.co.uk/feature/mac-software/how-use-terminal-on-mac-3608274/)
>
> ### Windows
> Computers with Windows operating systems do not automatically have a
> Unix Shell program installed.  In this lesson, we encourage you to use
> the [web portal](https://sol.asu.edu) to connect to Sol and use the
> shell there.
>
> Other solutions are available for running Bash commands on Windows.
> There is now a Bash shell command-line tool available for Windows 11.
> Additionally, you can run Bash commands on a remote computer or server
> that already has a Unix Shell, from your Windows machine.  This can
> usually be done through a Secure Shell (SSH) client.  One such client
> available for free for Windows computers is PuTTY.  See the reference
> below for information on installing and using PuTTY, using the Windows
> 10 command-line tool, or installing and using a Unix/Linux emulator.
>
> #### Reference
> * [Git for Windows](https://git-for-windows.github.io/) - *Recommended*
>
> ### For advanced users, you may choose one of the following alternatives:
> * [Install the Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10)
> * [Using a Unix/Linux emulator (Cygwin) or Secure Shell (SSH) client (Putty)](http://faculty.smu.edu/reynolds/unixtut/windows.html)
> * Please note that commands in the Windows Subsystem for Linux (WSL)
>   or Cygwin may differ slightly from those shown in the lesson or
>   presented in the workshop.
{: .callout}
