FROM        node
RUN         mkdir /app
WORKDIR     /app
ADD         node_modules schema DbConfig.js index.js package.json TransactionService.js /app/
ENTRYPOINT  ["node", "/app/index.js"]
