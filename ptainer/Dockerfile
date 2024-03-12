FROM golang:latest

RUN mkdir /p

COPY p/predict.sh 

COPY p/get_input.sh

COPY p/main.go

RUN go build -o main .

EXPOSE 9090

CMD [ "/p/main" ]


