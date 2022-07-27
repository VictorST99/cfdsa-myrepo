#base image
ARG NODE_VER=18

FROM node:${NODE_VER}

# Building the Image
# Create /app and cd into it
WORKDIR /app

# Copy app files into /app
ADD main.js .
ADD package.json .
ADD package-lock.json .
ADD public public
ADD views views

# Install dependencies
RUN npm ci

# Set any environment variables
ENV PORT=5000
ENV INSTANCE_NAME=""
ENV INSTANCE_HASH=""
EXPOSE ${PORT}

# entry point
ENTRYPOINT [ "node", "main.js" ]








