FROM postgres:14.1-alpine

EXPOSE 5432

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres

RUN echo "Creating postgres image"