#!/usr/bin/env bash
#################################################
#   Original code                               #
#   Déruaz Vincent                              #
#   deruazvincent@gmail.com                     #
#################################################

#################################################
#   CRONTAB (every 1 minute)                    #
#   $ sudo vi /etc/crontab                      #
#   * * * * * root sh /path/to/indexing.sh      #
#   $ synoservice -restart crond                #
#################################################

# index new file created in the last 2 days
# from path /volume1/video
# PS: you can add other media extensions (mp3, jpg, ...)

for x in $(find /volume1/video -ctime -2 -iregex '.*\(avi\|mkv\|mp4\)');
do
    echo "$x ";
    synoindex -A $x;
done ;

