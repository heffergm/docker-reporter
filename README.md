## To run via docker composer
* if you need sample data, download [manila](https://s3.amazonaws.com/valhallatiles/manila/manila.tar)
* move the tarball to `/some/path/to/data/extract.tar`
* `DATAPATH=/some/path/to/data docker-compose up`

## To build/publish images
* `./build.sh [version_tag]`
* `docker push mapzen/ot-matcher`

## Exposed Ports/Services
* the container exposes port 8002 and docker-compose maps that port locally

Example browser request from your local machine: [click me](localhost:8002/segment_match?json={"trace":[ {"lat":14.543087,"lon":121.021019,"time":1000}, {"lat":14.543620,"lon":121.021652,"time":1008}, {"lat":14.544957,"lon":121.023247,"time":1029}, {"lat":14.545470,"lon":121.023811,"time":1036}, {"lat":14.546580,"lon":121.025124,"time":1053}, {"lat":14.547284,"lon":121.025932,"time":1064}, {"lat":14.547817,"lon":121.026665,"time":1072}, {"lat":14.549700,"lon":121.028839,"time":1101}, {"lat":14.550350,"lon":121.029610,"time":1111}, {"lat":14.551256,"lon":121.030693,"time":1125}, {"lat":14.551785,"lon":121.031395,"time":1133}, {"lat":14.553422,"lon":121.033340,"time":1158}, {"lat":14.553819,"lon":121.033806,"time":1164}, {"lat":14.553976,"lon":121.033997,"time":1167}]})
