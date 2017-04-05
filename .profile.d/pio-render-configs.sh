#!/usr/bin/env bash

core_site_template=/app/pio-engine/PredictionIO-dist/conf/core-site.xml.erb
if [ -f "$core_site_template" ]
then
  erb $core_site_template > /app/pio-engine/PredictionIO-dist/conf/core-site.xml
fi

spark_defaults_template=/app/pio-engine/PredictionIO-dist/conf/spark-defaults.conf.erb
if [ -f "$spark_defaults_template" ]
then
  erb $spark_defaults_template > /app/pio-engine/PredictionIO-dist/vendors/spark-hadoop/conf/spark-defaults.conf
fi
