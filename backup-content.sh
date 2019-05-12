#!/bin/bash
output="../backup/content_$(date +%s).tar.gz"
cd content
tar -zcf $output *
