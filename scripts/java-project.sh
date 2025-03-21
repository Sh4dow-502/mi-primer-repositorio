#!/bin/bash

# Variables
PROJECT_NAME="$1"
GROUP_ID="com.example"
ARTIFACT_ID="${PROJECT_NAME}"
PACKAGING="jar"

# Crear el proyecto Maven
mvn archetype:generate \
  -DgroupId=${GROUP_ID} \
  -DartifactId=${ARTIFACT_ID} \
  -DarchetypeArtifactId=maven-archetype-quickstart \
  -DinteractiveMode=false

# Navegar al directorio del proyecto
cd ${ARTIFACT_ID}

echo "Proyecto Maven creado exitosamente en ${ARTIFACT_ID}"
