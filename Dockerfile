FROM rocker/r-ver

RUN R -e "install.packages('hoopR')"

CMD R -e "source('update_data.R')"


