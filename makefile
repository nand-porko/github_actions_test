download:
	go mod download
	go list
	go mod tidy
tests:
	go test -v 2>&1 | go-junit-report > report.xml
