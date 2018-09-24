#!/bin/bash

set -e

packages=$(pacman -Qq)
pacman --noconfirm -Runs -- ${packages//$'\npacman\n'/$'\n'}
pacman --needed --noconfirm -Syyuu bash
