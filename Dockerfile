FROM rocker/geospatial:3.6.3

# Install db.geonz first to cache this step
WORKDIR /geonz
RUN R -e "remotes::install_github('harmonic-analytics/db-geonz')"

# Install geonz dependencies
COPY DESCRIPTION /geonz/
RUN R -e "remotes::install_deps(dependencies = TRUE)"

COPY . /geonz/
