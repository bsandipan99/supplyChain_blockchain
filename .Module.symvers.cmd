cmd_/home/sandipan/x/Module.symvers := sed 's/\.ko$$/\.o/' /home/sandipan/x/modules.order | scripts/mod/modpost -m -a  -o /home/sandipan/x/Module.symvers -e -i Module.symvers   -T -
