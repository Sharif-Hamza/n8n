FROM node:20

WORKDIR /app

COPY . .

ENV HUSKY=0
ENV SKIP_PREPARE_HOOK=1

RUN npm install -g pnpm
RUN pnpm install --ignore-scripts
RUN pnpm build

EXPOSE 5678

CMD ["pnpm", "start"]
