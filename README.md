# DockerLearn.MSSQL


```
docker-compose up --build --force-recreate --detach
```

example of result:
```
[+] Building 1.5s (9/9) FINISHED
 => [internal] load build definition from dockerfile                                                               0.0s
 => => transferring dockerfile: 32B                                                                                0.0s
 => [internal] load .dockerignore                                                                                  0.0s
 => => transferring context: 2B                                                                                    0.0s
 => [internal] load metadata for mcr.microsoft.com/mssql/server:2019-latest                                        1.0s
 => CACHED [1/4] FROM mcr.microsoft.com/mssql/server:2019-latest@sha256:f57d743a99a4003a085d0fd67dbb5ecf98812c08a  0.0s
 => [internal] load build context                                                                                  0.0s
 => => transferring context: 160B                                                                                  0.0s
 => [2/4] ADD ./scripts/docker-entrypoint.sh /home/scripts/entrypoint.sh                                           0.1s
 => [3/4] ADD ./scripts/docker-db-init.sh /home/scripts/db-init.sh                                                 0.1s
 => [4/4] ADD ./scripts/db-init.sql /home/scripts/db-init.sql                                                      0.1s
 => exporting to image                                                                                             0.1s
 => => exporting layers                                                                                            0.1s
 => => writing image sha256:cbc91463acabe7610dc6fcda67575322aba0c9a0e365793f8f500892cc83c319                       0.0s
 => => naming to docker.io/library/dockerlearnmssql-mssql                                                          0.0s
[+] Running 2/2
 - Network dockerlearnmssql_default  Created                                                                       0.7s
 - Container mssql                   Started                                                                       1.4s
```

```
docker ps
```
```
CONTAINER ID   IMAGE                    COMMAND                  CREATED         STATUS         PORTS                    NAMES
3f2b0123625a   dockerlearnmssql-mssql   "/opt/mssql/bin/perm…"   3 minutes ago   Up 3 minutes   0.0.0.0:1433->1433/tcp   mssql   
```
#### Check if script files are inside image:
```
docker exec -it mssql /bin/bash
```

```
root@3f2b0123625a:/# cd /home/scripts
root@3f2b0123625a:/home/scripts# ls -la
total 24
drwxr-xr-x 1 root root 4096 Feb 14 15:33 .
drwxr-xr-x 1 root root 4096 Feb 14 14:15 ..
-rwxr-xr-x 1 root root  222 Feb 14 14:39 db-init.sh
-rwxr-xr-x 1 root root  372 Feb 14 15:30 db-init.sql
-rwxr-xr-x 1 root root   63 Feb 13 10:10 entrypoint.sh
root@3f2b0123625a:/home/scripts# exit
exit
```

---
#### How database looks like?

```sql
USE [DockerLearnDatabase]
SELECT * FROM [dbo].[TestTable]
```

![Azure Data Studio](/.Docs/screenshot_ADS_01.png)
---
```
docker-compose down
```