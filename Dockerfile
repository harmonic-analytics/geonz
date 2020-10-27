FROM rocker/geospatial:3.6.3

# Install db.geonz
ARG GITLAB_PAT
RUN R echo 'GITLAB_PAT='${GITLAB_PAT} >> .Renviron
RUN R -e "stopifnot(nchar(Sys.getenv('GITLAB_PAT'))==20)"
RUN R -e "remotes::install_gitlab('harmonic/databases/db-geonz', host='gitlab.harmonic.co.nz')"

# Install geonz dependencies
WORKDIR /geonz
COPY DESCRIPTION /geonz/

# Remove db-geonz from the remotes and dependencies
RUN R -q -e "desc::description\$new()\$del_remotes('db.geonz')\$del_dep('db.geonz')\$write()"
RUN R -e "remotes::install_deps(dependencies = TRUE)"

COPY . /geonz/
