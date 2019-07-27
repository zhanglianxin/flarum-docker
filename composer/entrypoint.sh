#!/bin/sh
set -e

chpmaw () {
    [[ ! -e "compsoer.json" ]] || return 1
    [[ -e "vendor/" ]] || su-exec root chmod -R a+w /var/www/html || return 1
    for f in "$@"; do
        [[ -e "$f" ]] && su-exec root chmod a+w "$f" || return "$?"
    done
}

chpmaw "composer.json" "composer.lock" "vendor/" && [[ 1 -eq "$?" ]] && echo "Insufficient permissions" && return "$?"

su-exec www-data $@

su-exec www-data composer dump-autoload --optimize
