FROM public.ecr.aws/docker/library/node:16

WORKDIR /api-server

COPY . .

RUN yarn
RUN yarn build
RUN npx prisma generate

ENV SERVER_PORT=80

ENV DATABASE_URL="postgres://postgres:postgres@multi-tenant-architecture-database-1.cfxijhybuoaj.us-east-1.rds.amazonaws.com:5432/postgres?schema=multi-tenant-architecture"
ENV DEBUG=true
ENV SESSION_SECRET_KEY="98fQTDh2uNSRVjrRxFn5V4WgPP99QawUkLHqoDdBFHBXQi3Z"

# Encryption key needs to be 32 chars long
ENV ENCRYPTION_KEY="ZydMYrVB9JPFGM3NMhcjeX9eciSoStw3"

EXPOSE 80

RUN chmod +x /api-server/startProduction.sh
RUN chown root:root startProduction.sh

CMD /api-server/startProduction.sh