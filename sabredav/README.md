```
mkdir data/
cat sabredav-src/examples/sql/sqlite.* | sqlite3 data/db.sqlite
docker run --rm -p 80:80 -v $(pwd)/data:/data bakerba/sabredav
```
