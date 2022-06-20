FROM virtualstaticvoid/heroku-docker-r:shiny

ENV PORT=8080

RUN R -e "install.packages('shiny')"
RUN R -e "install.packages('shinythemes')"
RUN R -e "install.packages('httr')"
RUN R -e "install.packages('XML')"
RUN R -e "install.packages('magrittr')"
RUN R -e "install.packages('xml2')"
RUN R -e "install.packages('rvest')"
RUN R -e "install.packages('iotools')"
RUN R -e "install.packages('DT')"
RUN R -e "install.packages('jsonlite')"
RUN R -e "install.packages('qrcode')"

CMD ["/usr/bin/R", "--no-save", "--gui-none", "-f", "/app/app.R"]
