FROM n8nio/n8n:latest
USER root
RUN mkdir /home/node/.n8n && chown -R node:node /home/node/.n8n
USER node
ENV N8N_PORT=5678
ENV NODE_ENV=production
EXPOSE 5678
CMD ["n8n", "start"]
