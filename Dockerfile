FROM micheldebree/docker-acme:latest AS build
COPY hello.asm /root
RUN acme --cpu 6510 --format cbm --outfile hello.prg hello.asm

FROM ethomson/cloud64:latest AS runtime
COPY --from=build /root/hello.prg /app/wwwroot/program.prg

WORKDIR /app
