FROM node:14

WORKDIR /app

COPY package*.json ./
RUN npm install

# Install Python and required packages
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install pandas

COPY . .

EXPOSE 7000

CMD ["npm", "start"]
