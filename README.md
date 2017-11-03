fetch-wikiqa-corpus
-------------------

This repo contains a Dockerfile for building a
FetchCommunicationService server that comes bundled with
Communications for the Wikipedia articles that are part of the WikiQA
data set.

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
