FROM node:12

RUN mkdir /react_app

WORKDIR /react_app

COPY . /react_app/

#RUN yarn

#RUN yarn build

RUN npm install --silent

RUN npm run build

RUN npm install -g create-react-app --silent

EXPOSE 3000

CMD [ "npm", "start" ]
