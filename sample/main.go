package main

import (
	"bufio"
	"log"
	"net/http"
)

func main() {
	request()
}

// request
func request() error {
	resp, err := http.Get("https://example.com")
	if err != nil {
		return err
	}
	defer resp.Body.Close()

	scanner := bufio.NewScanner(resp.Body)
	for i := 0; scanner.Scan() && i < 5; i++ {
		log.Println(scanner.Text())
	}

	if err := scanner.Err(); err != nil {
		return err
	}
	return nil
}
