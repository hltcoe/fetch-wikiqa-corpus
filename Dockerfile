FROM hltcoe/concrete-python

COPY WikiQA-comms.zip /home/concrete/

ENTRYPOINT ["fetch-server.py", "--loglevel", "debug", "/home/concrete/WikiQA-comms.zip"]
