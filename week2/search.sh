#!/bin/bash

# searches through the /var/log dir & find “packets” from an Ubuntu instance
sudo find /var/log/ -type f -exec grep -l 'packets' {} \; -print