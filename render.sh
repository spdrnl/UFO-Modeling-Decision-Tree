#!/bin/sh
echo '{"args": ["--no-sandbox", "--disable-setuid-sandbox"]}' > puppeteer-config.json
mmdc -i ufo-decision-tree.mermaid -o ufo-decision-tree.png -p puppeteer-config.json -w 3200
rm puppeteer-config.json