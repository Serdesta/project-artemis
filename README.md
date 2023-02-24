<!-- yum install epel-release -y
yum install python-pip -y
pip install Flask  -->

 # Artemis
## Clone a repo
## Change branch (to a version)
### Build Docker Image 
```
  docker build -t   tools:latest     . 
```

### Tag Image 
```
  docker  image  tag  tools:latest us-central1-docker.pkg.dev/$GOOGLE_PROJECT/tools/tools:latest
```

### Authenticate 
```
	gcloud auth configure-docker  us-central1-docker.pkg.dev
```

### Push image 
```
   docker push us-central1-docker.pkg.dev/$GOOGLE_PROJECT/tools/tools:latest
```