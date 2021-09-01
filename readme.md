## Bcktousb: A Simple Backup Utility Written In Bash

An easy to use tool to make signed backups which are timestamped 


Features:
- creates a timestamped gzipped tar file with all backedup data
- Has a progress bar (thnx to rsync)
- Creates signed backups to check for tampering
- A very small and simple script (easy to edit/tweak)

Dependencies:
- bash
- rsync
- gpg2
- tar

How to use:
- To install type this line in commandline
```bash
    curl https://raw.githubusercontent.com/teito-dev/bcktousb/releases/install.sh | bash
```

- To edit the list of files to backup open file under .config/bcktousb by name of tracklist , which stores the list of all files and folders that need to be stored inside the backup

Todo:
- [x] Write an install script to 
      make it easier to setup
- [x] Make it easier to use
- [ ] Allow an option to encrypt backups
- [ ] Allow an option to directly send the backup
     to specific backends
- [ ] Support incremental backups
- [ ] Support seamless restoration
- [x] Make backup script cleaner to tweak , using functions
