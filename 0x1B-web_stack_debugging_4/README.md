Project Title: Web Stack Debugging Project

This project aims to optimize the performance of a web server setup featuring Nginx under pressure. We observed a significant number of failed requests during benchmarking using ApacheBench. The goal is to eliminate failed requests and enhance the overall reliability of the system.

### Puppet Manifests

- Puppet manifests are written to ensure compatibility with Ubuntu 14.04 LTS.
- All files end with a new line.
- A README.md file at the root of the folder provides essential information about the project.

### Puppet Lint

- Puppet manifests pass puppet-lint version 2.1.1 without any errors.
- The first line of each Puppet manifest is a comment explaining its purpose.
- Manifest files end with the extension .pp.

### Puppet Version

- Files are checked with Puppet v3.4.

### Installation of puppet-lint

```bash
$ apt-get install -y ruby
$ gem install puppet-lint -v 2.1.1
```

### Tasks

**Task 0: Sky is the Limit, Let's Bring that Limit Higher**

- The ApacheBench tool is used for benchmarking, simulating 2000 requests to the server with 100 requests at a time.
- Initial benchmark showed 943 failed requests.
- After applying the Puppet manifest (0-the_sky_is_the_limit_not.pp), subsequent benchmarking resulted in 0 failed requests, achieving a significant improvement in performance.

### Benchmark Results After Optimization

```bash
$ ab -c 100 -n 2000 localhost/
```

- Server Software: Nginx/1.4.6
- Document Path: /
- Document Length: 612 bytes
- Concurrency Level: 100
- Time taken for tests: 0.301 seconds
- Complete requests: 2000
- Failed requests: 0
- Requests per second: 6650.99 [#/sec]
- Time per request: 15.035 [ms]

### Conclusion

The optimization successfully addressed the initial high rate of failed requests, resulting in a more stable and responsive web server.
