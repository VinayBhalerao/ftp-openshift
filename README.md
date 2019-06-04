```
oc new-project ftp

oc new-build https://github.com/VinayBhalerao/ftp-openshift.git --strategy=docker --name=ftp

oc get is/ftp #Get image name

oc new-app --docker-image=abc -e FTP_USER_NAME=bob -e FTP_USER_PASS=12345 -e FTP_USER_HOME=/home/bob
```

