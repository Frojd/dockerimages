# Docker Images

Docker images for Composer with PHP, published to `ghcr.io/frojd/dockerimages`.

## Supported versions

| PHP version | Composer versions |
|-------------|-------------------|
| 8.3 | 1.9.2, 1.9.3, 2.0.2, 2.2.4, 2.4.4, 2.5.8, 2.6.6, 2.7.9, 2.8.10 |
| 8.2 | 1.9.2, 1.9.3, 2.0.2, 2.2.4, 2.4.4, 2.5.8, 2.6.6, 2.7.9, 2.8.10 |
| 8.1 | 1.9.2, 1.9.3, 2.0.2, 2.2.4, 2.4.4, 2.5.8, 2.6.6, 2.7.9, 2.8.10 |

## Unsupported versions

These PHP versions are no longer supported and will not receive updates. Images are still available but provided as-is.

| PHP version | Composer versions |
|-------------|-------------------|
| 8.0 | 1.9.2, 1.9.3, 2.0.2, 2.2.4, 2.4.4 |
| 7.4 | 1.9.2, 1.9.3, 2.0.2, 2.7.1 |
| 7.2 | 1.9.2, 1.9.3 |
| 7.0 | 1.9.2, 1.9.3 |

## Usage

```
docker pull ghcr.io/frojd/dockerimages/composer-php-8.3:2.8.10
```

## Building

Each PHP version has its own directory with a Makefile:

```
cd composer-php-8.3
make build
make push
```
