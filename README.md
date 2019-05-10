# BatchSVGtoPNG

# Usage
## Single file conversion on MaxOS
1. Install docker.
2. Build Dockerfile with following command.
```
docker build -t python-dl:latest .
```

3. Run docker image with mounting current directory as working directory.
```bash
docker run --rm -it -v $(pwd):/var/python python-dl bash
```

4. Put SVG file (ex. image.svg) to src directory.

5. Run cairosvg command.
```bash
cairosvg src/image.svg -o dst/image.png
```

## Cleanup old build after updating Dockerfile
If you build Dockerfile after updating it, the previous build may remain like following log.

```bash
$ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED              SIZE
python-dl           latest              c6d6f509ae5b        3 seconds ago        1.21GB
<none>              <none>              6e119ff05b9e        About a minute ago   1.21GB  <- Previous build
python              latest              a4cc999cf2aa        2 days ago           929MB
```

Then you can cleanup these images by following command.

```bash
docker rmi $(docker images -qa -f 'dangling=true')
```