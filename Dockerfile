FROM apache/druid:0.18.1

# NOTE: check /druid.sh after each version bumping
RUN sed 's/middleManager)/middleManager | indexer)/g' /druid.sh
