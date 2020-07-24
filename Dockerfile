FROM apache/druid:0.19.0

# NOTE: check /druid.sh after each version bumping
RUN cp /druid.sh /tmp/druid.sh
RUN sed -i -e 's/middleManager)/middleManager | indexer)/g' /tmp/druid.sh

ENTRYPOINT ["/tmp/druid.sh"]
