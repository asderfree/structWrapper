#!/bin/bash
PCAP=capture.pcap
END=$(tshark -r $1 -T fields -e udp.stream | sort -n | tail -1)
for((i=0;i<=END;i++)); do 
    tshark -r $1 -Y "udp.stream eq $i" -T fields -e data.text -o data.show_as_text:TRUE 2>/dev/null | tr -d '\n' | grep "picoCTF"; 
    if [ $? -eq 0 ]; then 
        echo "(Stream #$i)"; 
    fi; 
done
