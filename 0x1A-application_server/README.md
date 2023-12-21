Project Title: # AirBnB Clone Application Server Setup

## Task 0: Set up development with Python

1. Ensure that task #3 of your SSH project is completed for web-01.
2. Install the net-tools package on your server: `sudo apt install -y net-tools`.
3. Git clone your AirBnB_clone_v2 on your web-01 server.
4. Configure the file `web_flask/0-hello_route.py` to serve its content from the route `/airbnb-onepage/` on port 5000.
   - Flask application object must be named `app`.

Example usage:
```bash
Window 1:
$ python3 -m web_flask.0-hello_route
 * Serving Flask app "0-hello_route" (lazy loading)
 * Environment: production
   WARNING: Do not use the development server in a production environment.
   Use a production WSGI server instead.
 * Running on http://0.0.0.0:5000/ (Press CTRL+C to quit)
Window 2:
$ curl 127.0.0.1:5000/airbnb-onepage/
Hello HBNB!
```

## Task 1: Set up production with Gunicorn

1. Install Gunicorn and any other required libraries.
2. Serve the content from the same route as in Task 0 using Gunicorn on port 5000.
   - Flask application object should be called `app`.
   - Ensure nothing is listening on port 6000.

Example usage:
```bash
Terminal 1:
$ gunicorn --bind 0.0.0.0:5000 web_flask.0-hello_route:app
[...]
Terminal 2:
$ curl 127.0.0.1:5000/airbnb-onepage/
Hello HBNB!
```

## Task 2: Serve a page with Nginx

1. Configure Nginx to serve your page from the route `/airbnb-onepage/`.
2. Nginx should proxy requests to the process listening on port 5000.

Example:
```bash
On my server:
Window 1:
$ gunicorn --bind 0.0.0.0:5000 web_flask.0-hello_route:app
[...]
On my local terminal:
$ curl -sI 35.231.193.217/airbnb-onepage/
[...]
$ curl 35.231.193.217/airbnb-onepage/
Hello HBNB!
```

## Task 3: Add a route with query parameters

1. Configure Nginx to proxy HTTP requests to the route `/airbnb-dynamic/number_odd_or_even/(any integer)` to a Gunicorn instance on port 5001.

Example:
```bash
Terminal 1:
$ tmux new-session -d 'gunicorn --bind 0.0.0.0:5000 web_flask.0-hello_route:app'
[...]
$ tmux new-session -d 'gunicorn --bind 0.0.0.0:5001 web_flask.6-number_odd_or_even:app'
[...]
$ curl 127.0.0.1:5000/airbnb-onepage/
Hello HBNB!
$ curl 127.0.0.1:5001/number_odd_or_even/6
[...]
$ curl 127.0.0.1/airbnb-dynamic/number_odd_or_even/5
[...]
```

## Task 4: Serve your AirBnB clone API

1. Git clone your AirBnB_clone_v3.
2. Set up Nginx so that the route `/api/` points to a Gunicorn instance listening on port 5002.

Example:
```bash
Terminal 1:
$ tmux new-session -d 'gunicorn --bind 0.0.0.0:5002 api.v1.app:app'
[...]
$ curl 127.0.0.1:5002/api/v1/states
[...]
$ curl 127.0.0.1/api/v1/states
[...]
```

## Task 5: Serve your AirBnB clone Web Dynamic

1. Git clone your AirBnB_clone_v4.
2. Gunicorn should serve content from `web_dynamic/2-hbnb.py` on port 5003.
3. Nginx should route `/` to your Gunicorn instance and serve static assets from `web_dynamic/static/`.
4. Reconfigure `web_dynamic/static/scripts/2-hbnb.js` to the correct IP.

Example:
```bash
$ gunicorn --bind 0.0.0.0:5003 web_dynamic.2-hbnb:app
[...]
$ curl 127.0.0.1:5003/
[...]
```

