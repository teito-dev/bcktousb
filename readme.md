## Bcktousb: A Simple Backup Utility Written In Bash

An easy to use tool to make signed backups which are timestamped 

Features:
- creates a timestamped gzipped tar file with all backedup data
- Has a progress bar (thnx to rsync)
- Creates signed backups to check for tampering
- A very small and simple script (easy to edit/tweak)

How to use:
- To install type this line in commandline
```bash
    curl https://raw.githubusercontent.com/teito-dev/bcktousb/releases/install.sh | bash
```

Dependencies:
- bash
- rsync
- gpg2
- tar

How to tweak:
- Has config files under .config/bcktousb 
- If installed first time, run the bcktousb command once and it will init
  the config files for you under your user's .config directory
- It has 3 files for now tracklist,excludelist,bcktousb_config
  tracklist: has all the files and folder names that you want to backup

  excludelist: has all the files and folder names that you explicitly dont 
  want to track

  bcktousb_config: has all the config variables that you can tweak to your liking


Todo:
- [x] Write an install script to 
      make it easier to setup
- [x] Make it easier to use
- [x] Add examples for people to understand 
      how it looks
- [ ] Enable extension scripts to be chained to bcktousb
- [ ] Allow an option to encrypt backups
- [ ] Allow an option to directly send the backup
     to specific backends
- [ ] Add man docs
- [ ] Support incremental backups
- [ ] Support seamless restoration
- [x] Make backup script cleaner to tweak , using functions
