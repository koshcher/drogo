FROM drogonframework/drogon:latest

COPY . /usr/scr/drogo

WORKDIR /usr/scr/drogo/build

RUN cmake ..
RUN make
RUN echo '<h1>Hello Drogon!</h1>' >>index.html

ENV PORT "8080"
# EXPOSE 8080

CMD ["./drogo"]