download:
	go mod download
	go list
	go mod tidy
tests:
	GOBIN=/usr/local/bin/ go install github.com/jstemmer/go-junit-report/v2@latest
	go test -v 2>&1 | go-junit-report > report.xml
