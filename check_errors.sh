#!/bin/bash
RED='\033[0;33m'
NC='\033[0m' # No Color

echo -e "${RED}>>>>>>>>>>Pressurizing<<<<<<<<<<${NC}"
cat primary.log | grep -o "Pressurizing.*Duration: [^*]*"

echo -e "${RED}>>>>>>>>>>Pour<<<<<<<<<<${NC}"
cat primary.log | grep "POUR.*Duration: [^*]*"

echo -e "${RED}>>>>>>>>>>removing<<<<<<<<<<${NC}"
cat primary.log | grep "removing"

echo -e "${RED}>>>>>>>>>>MALLOC<<<<<<<<<<${NC}"
cat primary.log | grep "MALLOC"

echo -e "${RED}>>>>>>>>>>NULL<<<<<<<<<<${NC}"
cat primary.log | grep "NULL"

echo -e "${RED}>>>>>>>>>>error<<<<<<<<<<${NC}"
cat primary.log | grep -o "[[A-Za-z][A-Za-z]*] [^*]* error"

echo -e "${RED}>>>>>>>>>>Reset:<<<<<<<<<<${NC}"
cat primary.log | grep -o "Reset Reason: [^*]*"

echo -e "${RED}>>>>>>>>>>Failed<<<<<<<<<<${NC}"
cat primary.log | grep -i "Failed"

echo -e "${RED}>>>>>>>>>>Network & Sensor Status<<<<<<<<<<${NC}"
cat primary.log | grep -o "{\"secondary_units\":[^*]*"
cat primary.log | grep -o "{\"primary_unit\":[^*]*"

echo -e "${RED}>>>>>>>>>>Ignoring<<<<<<<<<<${NC}"
cat primary.log | grep -i "Ignoring"