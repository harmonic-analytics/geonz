FROM rocker/geospatial:3.6.3

# Install geonz dependencies
WORKDIR /geonz
COPY DESCRIPTION /geonz/

RUN R -e "remotes::install_deps(dependencies = TRUE)"

COPY . /geonz/
