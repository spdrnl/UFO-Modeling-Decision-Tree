#!/bin/sh
mmdc -i 00-Start.mermaid -o png/00-Start.png -p config.json --puppeteerConfigFile puppeteer-config.json -s 2
mmdc -i 01-Individual.mermaid -o png/01-Individual.png -p config.json --puppeteerConfigFile puppeteer-config.json -s 2
mmdc -i 02a-Substantial.mermaid -o png/02a-Substantial.png -p config.json --puppeteerConfigFile puppeteer-config.json -s 2
mmdc -i 02b-Abstract.mermaid -o png/02b-Abstract.png -p config.json --puppeteerConfigFile puppeteer-config.json -s 2
mmdc -i 03-Moment.mermaid -o png/03-Moment.png -p config.json --puppeteerConfigFile puppeteer-config.json -s 2
mmdc -i 04a-Relation.mermaid -o png/04a-Relation.png -p config.json --puppeteerConfigFile puppeteer-config.json -s 2
mmdc -i 04b-Association.mermaid -o png/04b-Association.png -p config.json --puppeteerConfigFile puppeteer-config.json -s 2
mmdc -i 05-Perdurant.mermaid -o png/05-Perdurant.png -p config.json --puppeteerConfigFile puppeteer-config.json -s 2
mmdc -i 06-Higher-order.mermaid -o png/06-Higher-order.png -p config.json --puppeteerConfigFile puppeteer-config.json -s 2
