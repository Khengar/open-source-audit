#!/bin/bash

FILE="foss_manifesto.txt"

echo "=================================="
echo "       MANIFESTO GENERATOR        "
echo "=================================="
echo "Generating Open Source Manifesto..."

cat << 'EOF' > $FILE
THE OPEN SOURCE MANIFESTO
-------------------------
1. Free as in Freedom: Users have the liberty to run, copy, distribute, study, change, and improve the software.
2. Community Driven: The power of the software comes from the collective effort of developers worldwide.
3. Transparency: Code is open to audit, ensuring better security and no hidden backdoors.
4. No Corporate Monopolies: Software should not be locked behind proprietary walls that stifle innovation.
EOF

echo "[ SUCCESS ] Manifesto saved to $FILE."
echo ""
echo "Here is your generated manifesto:"
echo "----------------------------------"
cat $FILE
echo "----------------------------------"
