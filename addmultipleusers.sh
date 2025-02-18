#!/bin/bash

if [ $# -gt 0 ]; then
        groupadd developers

        for user in "$@"; do
                adduser -m -G developers "$user"
                echo "password" | passwd --stdin "$user"
        done
else
        echo "Please enter a user as an argument"
fi
