docker build -t zoll/aspnet:nanoserver .

docker images -a

docker run -d --name web1 -p 80:5821 nanowebsite

docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" nanowebsite
