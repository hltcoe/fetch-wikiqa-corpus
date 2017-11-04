fetch-wikiqa-corpus
-------------------

This repo contains a Dockerfile for building a
FetchCommunicationService server that comes bundled with
Communications for 2,384 Wikipedia articles that were used as part of
the [WikiQA](https://aclweb.org/anthology/D15-1237) data set.  The
file [WikiQA-articles.txt](WikiQA-articles.txt) contains the list of
article titles.

These Communications are a subset of [Concretely Annotated Gigaword
(CAW)](http://dx.doi.org/10.7281/T1/D06YVM).  CAW was created by
annotating articles from the 2016-02-16 database dump of English
Wikipedia.  The WikiQA data set was published in 2015, so the versions
of the Wikipedia articles in these Communications will differ from the
versions of the articles used for the WikiQA data set.

This repo does not include a copy of the Communications - you must
copy them from the HLTCOE filesystem:

    /exp/charman/WikiQA-comms.zip
  
to this directory.  You can then build a Docker image using the
Dockerfile in this directory, e.g.:

    docker build -t hltcoe/fetch-wikiqa-corpus .

You can run a container created from the image using:

    docker run -it --rm hltcoe/fetch-wikiqa-corpus [--port PORT] [--host SERVER_HOSTNAME]

e.g.:

    docker run -it --rm hltcoe/fetch-wikiqa-corpus --port 5050

If you would like to use this Docker image in a Docker Compose
workflow, look at the sample [docker-compose.yml](docker-compose.yml)
file in this repo.
