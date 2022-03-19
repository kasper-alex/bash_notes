#!/bin/bash

START="$(date "+%s")"
sleep 1
FINISH="$(date "+%s")"
printf "START=%s FINISH=%s DURATION=%s\n" "$(date --date "@${START}")" "$(date --date "@${FINISH}")" "$(( FINISH - START ))"
