FROM rocketchat/rocket.chat:latest

# Set the working directory
WORKDIR /app

# Set env vars for Rocket.Chat (Render will override these with your render.yaml)
ENV ROOT_URL=${ROOT_URL}
ENV PORT=${PORT}
ENV MONGO_URL=${MONGO_URL}
ENV MONGO_OPLOG_URL=${MONGO_OPLOG_URL}

# Expose the port explicitly
EXPOSE 3000

CMD ["node", "main.js"]
