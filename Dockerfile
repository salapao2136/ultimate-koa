FROM node:8.9.1-alpine

WORKDIR work
COPY ./package.json /work/package.json
COPY ./package-lock.json /work/package-lock.json
RUN npm install
COPY . /work
CMD ["npm", "run", "production"]