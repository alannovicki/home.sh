#!/bin/sh
# Author - Alan Novicki (https://github.com/alannovicki)

path_exists() {
    return `ls -A "$1" 1> /dev/null 2>&1`
}
