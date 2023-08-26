#!/bin/bash
echo "Starting smokin'guns server..."
echo "Port 27960"
sgserver/smokinguns_dedicated +set dedicated 2 +set net_port 27960 +set com_hunkmegs 128 +exec server.cfg