# Notes

## Adding packages to local Maven repo

```bash
rm -rf repo/org/apache/predictionio/apache-predictionio-*

# For PredictionIO dist made for Scala 2.11
./make-distribution.sh     -Dscala.version=2.11.8     -Dspark.version=2.1.0     -Dhadoop.version=2.7.3     -Delasticsearch.version=5.2.2

mvn deploy:deploy-file -Durl=file://$(pwd)/repo/ -Dfile=/Users/mars.hall/.ivy2/local/org.apache.predictionio/apache-predictionio-core_2.11/0.11.0-SNAPSHOT/jars/apache-predictionio-core_2.11.jar -DpomFile=/Users/mars.hall/.ivy2/local/org.apache.predictionio/apache-predictionio-core_2.11/0.11.0-SNAPSHOT/poms/apache-predictionio-core_2.11.pom -DuniqueVersion=false
mvn deploy:deploy-file -Durl=file://$(pwd)/repo/ -Dfile=/Users/mars.hall/.ivy2/local/org.apache.predictionio/apache-predictionio-common_2.11/0.11.0-SNAPSHOT/jars/apache-predictionio-common_2.11.jar -DpomFile=/Users/mars.hall/.ivy2/local/org.apache.predictionio/apache-predictionio-common_2.11/0.11.0-SNAPSHOT/poms/apache-predictionio-common_2.11.pom -DuniqueVersion=false
mvn deploy:deploy-file -Durl=file://$(pwd)/repo/ -Dfile=/Users/mars.hall/.ivy2/local/org.apache.predictionio/apache-predictionio-data_2.11/0.11.0-SNAPSHOT/jars/apache-predictionio-data_2.11.jar -DpomFile=/Users/mars.hall/.ivy2/local/org.apache.predictionio/apache-predictionio-data_2.11/0.11.0-SNAPSHOT/poms/apache-predictionio-data_2.11.pom -DuniqueVersion=false
mvn deploy:deploy-file -Durl=file://$(pwd)/repo/ -Dfile=/Users/mars.hall/.ivy2/local/org.apache.predictionio/apache-predictionio-e2_2.11/0.11.0-SNAPSHOT/jars/apache-predictionio-e2_2.11.jar -DpomFile=/Users/mars.hall/.ivy2/local/org.apache.predictionio/apache-predictionio-e2_2.11/0.11.0-SNAPSHOT/poms/apache-predictionio-e2_2.11.pom -DuniqueVersion=false
mvn deploy:deploy-file -Durl=file://$(pwd)/repo/ -Dfile=/Users/mars.hall/.ivy2/local/org.apache.predictionio/apache-predictionio-parent_2.11/0.11.0-SNAPSHOT/jars/apache-predictionio-parent_2.11.jar -DpomFile=/Users/mars.hall/.ivy2/local/org.apache.predictionio/apache-predictionio-parent_2.11/0.11.0-SNAPSHOT/poms/apache-predictionio-parent_2.11.pom -DuniqueVersion=false

# For PredictionIO dist made for Scala 2.10
./make-distribution.sh

mvn deploy:deploy-file -Durl=file://$(pwd)/repo/ -Dfile=/Users/mars.hall/.ivy2/local/org.apache.predictionio/apache-predictionio-core_2.10/0.11.0-SNAPSHOT/jars/apache-predictionio-core_2.10.jar -DpomFile=/Users/mars.hall/.ivy2/local/org.apache.predictionio/apache-predictionio-core_2.10/0.11.0-SNAPSHOT/poms/apache-predictionio-core_2.10.pom -DuniqueVersion=false
mvn deploy:deploy-file -Durl=file://$(pwd)/repo/ -Dfile=/Users/mars.hall/.ivy2/local/org.apache.predictionio/apache-predictionio-common_2.10/0.11.0-SNAPSHOT/jars/apache-predictionio-common_2.10.jar -DpomFile=/Users/mars.hall/.ivy2/local/org.apache.predictionio/apache-predictionio-common_2.10/0.11.0-SNAPSHOT/poms/apache-predictionio-common_2.10.pom -DuniqueVersion=false
mvn deploy:deploy-file -Durl=file://$(pwd)/repo/ -Dfile=/Users/mars.hall/.ivy2/local/org.apache.predictionio/apache-predictionio-data_2.10/0.11.0-SNAPSHOT/jars/apache-predictionio-data_2.10.jar -DpomFile=/Users/mars.hall/.ivy2/local/org.apache.predictionio/apache-predictionio-data_2.10/0.11.0-SNAPSHOT/poms/apache-predictionio-data_2.10.pom -DuniqueVersion=false
mvn deploy:deploy-file -Durl=file://$(pwd)/repo/ -Dfile=/Users/mars.hall/.ivy2/local/org.apache.predictionio/apache-predictionio-e2_2.10/0.11.0-SNAPSHOT/jars/apache-predictionio-e2_2.10.jar -DpomFile=/Users/mars.hall/.ivy2/local/org.apache.predictionio/apache-predictionio-e2_2.10/0.11.0-SNAPSHOT/poms/apache-predictionio-e2_2.10.pom -DuniqueVersion=false
mvn deploy:deploy-file -Durl=file://$(pwd)/repo/ -Dfile=/Users/mars.hall/.ivy2/local/org.apache.predictionio/apache-predictionio-parent_2.10/0.11.0-SNAPSHOT/jars/apache-predictionio-parent_2.10.jar -DpomFile=/Users/mars.hall/.ivy2/local/org.apache.predictionio/apache-predictionio-parent_2.10/0.11.0-SNAPSHOT/poms/apache-predictionio-parent_2.10.pom -DuniqueVersion=false
```