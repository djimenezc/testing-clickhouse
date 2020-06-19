
- docker run -it --rm --link some-clickhouse-server:clickhouse-server yandex/clickhouse-client --host clickhouse-server
- docker run -d -p 8123:8123 --name some-clickhouse-server --ulimit nofile=262144:262144 --volume=$HOME/clickhouse_db_vol:/var/lib/clickhouse yandex/clickhouse-server
- docker run -d --name some-clickhouse-server1 --ulimit nofile=262144:262144 -v ./config.xml:/etc/clickhouse-server/config.xml --volume=$HOME/clickhouse_db_vol1:/var/lib/clickhouse  yandex/clickhouse-server


- wget https://clickhouse-datasets.s3.yandex.net/ontime/partitions/ontime.tar

Links:
- https://hub.docker.com/r/yandex/clickhouse-server/
- https://dzone.com/articles/clickhouse-made-easy-getting-started-with-a-few-cl
- https://github.com/AlexAkulov/clickhouse-backup


Kubernetes:
- copy between pods
    kubectl cp clickhouse-dev/clickhouse-8974d965b-vzws5:/var/lib/clickhouse ./temporal/