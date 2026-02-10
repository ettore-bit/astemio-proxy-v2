FROM node:20-alpine
WORKDIR /app
RUN npm init -y
RUN npm install express
RUN echo 'const express = require("express"); const app = express(); app.get("*", (req, res) => res.send("Proxy OK")); app.listen(8080);' > server.js
EXPOSE 8080
CMD ["node", "server.js"]
