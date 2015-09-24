# go_hound

A Docker image to run [Hound](https://github.com/etsy/hound) code indexing tool.

## Testing

To build this image locally to test it:

```bash
docker build -t 'socrata/go_hound' .
```

To run this image locally to test it out:

```bash
docker run -p 6080:6080 -it socrata/go_hound
```

