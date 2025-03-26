FROM ghcr.io/imlapps/towndex:latest

COPY action.sh /action.sh

ENTRYPOINT ["/action.sh"]