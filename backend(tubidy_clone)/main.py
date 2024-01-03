import http.server
import ApiHandler.ApiHandlerClass as ApiHandler


def RunningServer(port: int):
    # Create an HTTP server with the custom request handler
    server = http.server.HTTPServer(('localhost', port), ApiHandler.ApiHandler)

    # Start the server
    print(f'Server listening on http://localhost:{port}')
    server.serve_forever()


if __name__ == "__main__":
    RunningServer(3001)
