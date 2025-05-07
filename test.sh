#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <source-max>"
    exit 1
fi

SOURCE_MAX=$1

rm -rf assigned_data

export MNEMONIC="luxury fringe debris olive machine gossip height daring what panic frame photo deny fury hybrid leader fame vocal amateur office edit fabric various run"
export PRYSM_PASSWORD="prysm_password"

go build
./eth2-val-tools keystores --insecure --prysm-pass $PRYSM_PASSWORD --source-mnemonic "$MNEMONIC" --source-min 0 --source-max $SOURCE_MAX