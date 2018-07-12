## deploy application
```
oc new-project eap-demo
oc replace --force -f https://raw.githubusercontent.com/jboss-openshift/application-templates/master/eap/eap71-image-stream.json
oc replace --force -f https://raw.githubusercontent.com/ataranai/ocp-test/master/ocp-custom-install-test/test-s2i.json
oc new-app --template=test-s2i \
 -p IMAGE_STREAM_NAMESPACE="eap-demo" \
 -p SOURCE_REPOSITORY_URL="https://github.com/ataranai/ocp-test" \
 -p SOURCE_REPOSITORY_REF="master" \
 -p CONTEXT_DIR="ocp-custom-install-test" \
 -p APPLICATION_NAME=eap-custom-test
```

## delete application
```
oc delete all -l application=eap-custom-test
```
