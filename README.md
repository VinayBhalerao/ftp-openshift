```
oc new-project ftp

oc new-build https://github.com/VinayBhalerao/ftp-openshift.git --strategy=docker --name=ftp --env FTP_USER_NAME=bob --env FTP_USER_PASS=12345 --env FTP_USER_HOME=/home/bob

oc get is/ftp #Get image name

oc new-app --docker-image=docker-registry.default.svc:5000/ftp/ftp -e FTP_USER_NAME=bob -e FTP_USER_PASS=12345 -e FTP_USER_HOME=/home/bob --insecure-registry
```

