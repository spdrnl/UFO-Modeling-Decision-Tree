#!/bin/sh
mmdc -i 00-Start.mermaid -o png/00-Start.png -p config.json -s 2 #-w 3200
mmdc -i 01-Individual.mermaid -o png/01-Individual.png -p config.json -s 2 #-w 3200
mmdc -i 02-Substantial.mermaid -o png/02-Substantial.png -p config.json -s 2 #-w 3200
mmdc -i 03-Moment.mermaid -o png/03-Moment.png -p config.json -s 2 #-w 3200
mmdc -i 04-Relational.mermaid -o png/04-Relational.png -p config.json -s 2 #-w 3200
mmdc -i 05-Perdurant.mermaid -o png/05-Perdurant.png -p config.json -s 2 #-w 3200