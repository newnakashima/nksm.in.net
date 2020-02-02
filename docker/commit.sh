repo_name=newnakashima/nksm-in-net:latest
docker build . -t $repo_name --no-cache
docker commit $repo_name
docker push $repo_name
