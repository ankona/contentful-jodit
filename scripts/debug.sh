spaceid=$1

contentful extension update \
    --space-id $spaceid \
    --force \
    --src http://localhost:3000/app.html