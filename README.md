# docker-agate

A minimal Docker image for the [Agate Gemini server](https://github.com/mbrubeck/agate).

## Build

`$ docker build -t docker-agate:latest .`

You can override the version of Agate with `--build-arg version=<branch or tag>`.

## Configuration

The most common Agate options can be configured using the environment variables listed below:

```
HOSTNAME    Gemini capsule FQDN (--hostname, default: localhost)
ADDR_IPV4   IPv4 address (--addr, default: 0.0.0.0:1965)
ADDR_IPV6   IPv6 address (--addr, e.g. [::]:1965)
CONTENT     Content path (--content, default: /var/gemini)
LANG        Language (--lang, default: en-US)
```

Whether running standalone or using Docker Compose, you will want to:
- Map the port, e.g. `-p 1965:1965`
- Map the content volume, e.g. `-v path/to/content/:/var/gemini/:ro` 

Check out some [examples](https://github.com/anthfu/docker-agate/tree/main/examples).

## Credits

This project is modeled on [kaiju/docker-gophernicus](https://github.com/kaiju/docker-gophernicus).
