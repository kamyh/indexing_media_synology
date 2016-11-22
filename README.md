# Indexing Media Synology

## Description

Really short script to index new media files on a synology.

## Use

1. Change as you want the target directory at line 19. (/volume1/video)
2. Change the number of days to check at line 19. (-ctime -**2**)
3. Change targeted extensions at line 19. (avi\\|mkv\\|mp4\\)
4. Add to the Crontab

    ```
    $ sudo vi /etc/crontab
    ```
5. Add run of the script every 2 minutes

    ```
        */2 * * * * root sh /path/to/indexing.sh
    ```
6. Restart Crontab

    ```
        $ synoservice -restart crond
    ```
