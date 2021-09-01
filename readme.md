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
- Copy the bcktousb script to /usr/local/bin
- Make sure its executable by chmod +x backtousb
- Open a new terminal
- Run the bcktousb script once for the first time by typing "bcktousb" in the terminal
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
