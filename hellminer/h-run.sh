#!/usr/bin/env bash

[[ `ps aux | grep "./hellminer" | grep -v grep | wc -l` != 0 ]] &&
  echo -e "${RED}$MINER_NAME miner is already running${NOCOLOR}" &&
  exit 1

cd $MINER_DIR/$MINER_VER

#./hellminer `cat hellminer.conf` 2>&1 | tee --append $MINER_LOG_BASENAME.log

addr="EQBUnlIKXj8OO5zpmjhtO3dJiSPy5KUP4p7hL_w9EpgGDVSH"
giver="Ef-P_TOdwcCh0AXHhBpICDMxStxHenWdLCDLNH5QcNpwMMn2"

./miner -u "$addr" -o "$giver" --switch --nvidia -v 2>&1 | tee --append $MINER_LOG_BASENAME.log
