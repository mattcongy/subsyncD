# subsyncD

Docker Runnable container to execute project subsync https://github.com/smacke/subsync

# How it works

## Create the image

Docker image is not yet in the docker hub, for some reasons.. so, the image should be created manually : 

1. Clone the repository

```sh
git clone 
```

2. Create the image with the name 'subsyncD' to be used after

```
docker build --rm --tag subsyncD .
```
3. Get your movie / tvshow file, your subtitle file in the same directory, then execute the following : 
```
docker run -it --rm -v $(pwd):/data -w /data subsync <movie_file> -i <input srt file> -o <corrected srt file>
```


