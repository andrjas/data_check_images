FROM local/poetry:3.8

RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
    curl https://packages.microsoft.com/config/debian/10/prod.list > /etc/apt/sources.list.d/mssql-release.list && \
    apt-get update && \
    apt-get install -y unixodbc unixodbc-dev && \
    ACCEPT_EULA=Y apt-get install -y msodbcsql17
