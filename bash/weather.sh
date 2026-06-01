#!/usr/bin/env bash

CITY="${1:-Dawsonville}"

curl -s "http://wttr.in/$CITY"
