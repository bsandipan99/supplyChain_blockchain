cmd_/home/sandipan/x/modules.order := {   echo /home/sandipan/x/lkm.ko; :; } | awk '!x[$$0]++' - > /home/sandipan/x/modules.order
