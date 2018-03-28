# caseyfw/apache

Super basic Apache2 image based on Alpine.

## Usage

Either copy or volume your content into `/web` when running - e.g.

```
docker run --volume ${PWD}:/web --publish 80:80 caseyfw/apache
```

The `$WEB_PATH` environment variable can be used to set the sub-path your
web root is served from. This should start with a slash - e.g. `/foo/bar`.

```
docker run -v ${PWD}:/web -p 80:80 -e "WEB_PATH=/foo/bar" caseyfw/apache
```

This will result in your content being served at http://localhost/foo/bar/.
