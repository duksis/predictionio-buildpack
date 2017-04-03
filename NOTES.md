# Notes

## Adding packages to local Maven repo

```bash
# Clear out previously generated Maven packages
rm -rf repo/org/apache/predictionio/apache-predictionio-*

# For PredictionIO dist made for Scala 2.10
./make-distribution.sh

# For PredictionIO dist made for Scala 2.11
./make-distribution.sh     -Dscala.version=2.11.8     -Dspark.version=2.1.0     -Dhadoop.version=2.7.3     -Delasticsearch.version=5.2.2

for NAME in core_2.11 common_2.11 data_2.11 e2_2.11 parent_2.11 core_2.10 common_2.10 data_2.10 e2_2.10 parent_2.10
do
  mvn deploy:deploy-file -Durl=file://$(pwd)/repo/ -Dfile=/Users/mars.hall/.ivy2/local/org.apache.predictionio/apache-predictionio-${NAME}/0.11.0-SNAPSHOT/jars/apache-predictionio-${NAME}.jar -DpomFile=/Users/mars.hall/.ivy2/local/org.apache.predictionio/apache-predictionio-${NAME}/0.11.0-SNAPSHOT/poms/apache-predictionio-${NAME}.pom -DuniqueVersion=false
done
```