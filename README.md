# What This Overlay Contains

This repository contains Gentoo ebuilds for Rust applications that I have developed. The applications that are
available for install are:

- sys-process/parallel-rust

# Installation Instructions

To add this overlay to Gentoo you will first need to install layman and add this github repository's
**layman.xml** file to **/etc/layman/layman.cfg**. The contents of that file shall look something like this:

    overlays  : http://www.gentoo.org/proj/en/overlays/repositories.xml
                http://github.com/mmstick/mmstick-overlay/raw/master/layman.xml

Following that, you will be able to fetch an updated list of repositories and add my personal repository.

    sudo layman -f
    sudo layman -a mmstick-overlay

Once added, you are then able to install the Rust applications that I have developed conveniently in Gentoo.

    sudo emerge sys-process/parallel-rust

