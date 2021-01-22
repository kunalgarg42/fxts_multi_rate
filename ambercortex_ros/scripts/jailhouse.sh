#!/bin/bash
if [[ $(jailhouse cell list | wc -l) = 3 ]]; then
    jailhouse cell destroy tx2-config
fi

jailhouse cell create ~/ambercortex/tx2-config.cell
jailhouse cell load tx2-config ~/ambercortex/erika_inmate.bin
jailhouse cell start tx2-config

exit
