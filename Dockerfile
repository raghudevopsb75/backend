FROM        node
RUN         mkdir /app
WORKDIR     /app
ADD         node_modules/ /app/node_modules/
ADD         schema/ /app/schema/
ADD         DbConfig.js index.js package.json TransactionService.js /app/
ADD         run.sh /run.sh
ENTRYPOINT  ["bash", "/run.sh"]
