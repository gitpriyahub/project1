FROM node
WORKDIR /project1
COPY ./ ./
RUN npm install
EXPOSE 3000
CMD [ "npm","start" ]
