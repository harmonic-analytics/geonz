FROM rocker/geospatial:3.6.3

# Install geonz dependencies
WORKDIR /geonz
COPY DESCRIPTION /geonz/

# Install db.geonz first to cache this step
RUN R -e "remotes::install_github('harmonic-analytics/db-geonz')"
RUN R -e "remotes::install_deps(dependencies = TRUE)"

COPY . /geonz/
