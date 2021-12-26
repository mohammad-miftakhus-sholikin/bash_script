#!/usr/bin/python

#Title             : Read wifi and password
#Creation date     : 8-Jun-2020
#Author            : Mohammad Miftakhus Sholikin
#Github            : https://github.com/mohammad-miftakhus-sholikin
#Description       : How to read wifi name and password from history cennection

import subprocess
data = subprocess.check_output(['netsh', 'wlan', 'show', 'profiles']).decode('utf-8').split('\n')
profiles = [i.split(":")[1][1:-1] for i in data if "All User Profile" in i] 
for i in profiles:
    try:
        results = subprocess.check_output(['netsh', 'wlan', 'show', 'profile', i, 'key=clear']).decode('utf-8').split('\n')
        results = [b.split(":")[1][1:-1] for b in results if "Key Content" in b]
        try:
            print ("{:<30}| {:<}".format(i, results[0]))
        except IndexError:
            print ("{:<30}| {:<}".format(i, ""))
    except subprocess.CalledProcessError:
        print ("{:<30}| {:<}".format(1, "ENCODING ERROR"))
input("")
