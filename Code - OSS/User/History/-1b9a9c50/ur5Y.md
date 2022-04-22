# Arch Linux

Arch Linux is an independently developed, x86-64 general-purpose GNU/Linux distribution that strives to provide the latest stable versions of most software by following a rolling-release model. The default installation is a minimal base system, configured by the user to only add what is purposely required. 

## Principles

### Simplicity

Arch Linux defines simplicity as ''without unnecessary additions or modifications''. It ships software as released by the original developers (`upstream`) with minimal distribution-specific (downstream) changes: patches not accepted by upstream are avoided, and Arch's downstream patches consist almost entirely of backported bug fixes that are obsoleted by the project's next release.

In a similar fashion, Arch ships the configuration files provided by upstream with changes limited to distribution-specific issues like adjusting the system file paths. It does not add automation features such as enabling a service simply because the package was installed. Packages are only split when compelling advantages exist, such as to save disk space in particularly bad cases of waste. GUI configuration utilities are not officially provided, encouraging users to perform most system configuration from the shell and a text editor.

### Modernity

Arch Linux strives to maintain the latest stable release versions of its software as long as systemic package breakage can be reasonably avoided. It is based on a `rolling-release` system, which allows a one-time installation with continuous upgrades.

Arch incorporates many of the newer features available to GNU/Linux users, including the `systemd` init system, modern `file systems`, LVM2, software RAID, udev support and initcpio (with `mkinitcpio`), as well as the latest available kernels.

### Pragmatism

Arch is a pragmatic distribution rather than an ideological one. The principles here are only useful guidelines. Ultimately, design decisions are made on a case-by-case basis through developer consensus. Evidence-based technical analysis and debate are what matter, not politics or popular opinion.

The large number of packages and build scripts in the various Arch Linux repositories offer free and open source software for those who prefer it, as well as proprietary software packages for those who embrace functionality over ideology.

### User centrality