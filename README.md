# caseyfw/apache

Super basic Apache2 image based on Alpine.

## Usage

Either copy or volume your content into `/web` when running - e.g.

```
docker run --detach --volume ${PWD}:/web --publish 80:80 caseyfw/apache
```
