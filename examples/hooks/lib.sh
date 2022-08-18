httpEcho() {
    curl -sS -X POST http://echo \
        -H 'Content-Type: text/plain' \
        -d "$*" 1>&2
}