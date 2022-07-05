#!/usr/bin/env sh

cd ./MediaStore

gradle --init-script ../init-script.gradle -q dependencyCheckAnalyze -DoutputFormatter=json
dependency-check --project "Test Project" --scan "MediaStore" --prettyPrint -f JSON
