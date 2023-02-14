# DockerLearn.MSSQL


<code>docker-compose up --build --force-recreate</code>

commands should ends with
```
(...)
running set up script...
mssql  | Changed database context to 'master'.
mssql  | 2023-02-14 15:34:09.45 spid51      [5]. Feature Status: PVS: 0. CTR: 0. ConcurrentPFSUpdate: 1.
2023-02-14 15:34:09.45 spid51      Starting up database 'DockerLearnDatabase'.
2023-02-14 15:34:09.51 spid51      Parallel redo is started for database 'DockerLearnDatabase' with worker pool size [2].
2023-02-14 15:34:09.54 spid51      Parallel redo is shutdown for database 'DockerLearnDatabase' with worker pool size [2].
Changed database context to 'DockerLearnDatabase'.
mssql  |
mssql  | (1 rows affected)
mssql  |
mssql  | (1 rows affected)
mssql  |
mssql  | (1 rows affected)
```

<code>docker ps</code>
```
CONTAINER ID   IMAGE                    COMMAND                  CREATED         STATUS         PORTS                    NAMES
3f2b0123625a   dockerlearnmssql-mssql   "/opt/mssql/bin/perm…"   3 minutes ago   Up 3 minutes   0.0.0.0:1433->1433/tcp   mssql   
```
<code>docker exec -it mssql /bin/bash</code>
```
root@3f2b0123625a:/# cd /home/scripts
root@3f2b0123625a:/home/scripts# ls -la
total 24
drwxr-xr-x 1 root root 4096 Feb 14 15:33 .
drwxr-xr-x 1 root root 4096 Feb 14 14:15 ..
-rwxr-xr-x 1 root root  222 Feb 14 14:39 db-init.sh
-rwxr-xr-x 1 root root  372 Feb 14 15:30 db-init.sql
-rwxr-xr-x 1 root root   63 Feb 13 10:10 entrypoint.sh
```

---
#### How database looks like?
![Azure Data Studio](/.Docs/screenshot_ADS_01.png)
---

<code>docker-compose down</code>

[end-of-story]