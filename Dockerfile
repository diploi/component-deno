
# Build stage
FROM denoland/deno:2.7.14 AS builder
ARG FOLDER=/app
WORKDIR ${FOLDER}
COPY . /app
RUN deno cache .

# Production stage
FROM denoland/deno:alpine-2.7.14
ARG FOLDER=/app
WORKDIR ${FOLDER}
COPY --from=builder --chown=1000:1000 /app /app
EXPOSE 8000
USER 1000:1000

CMD ["deno", "task", "prod"]