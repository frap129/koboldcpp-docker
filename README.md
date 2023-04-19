# koboldcpp Docker
Run koboldcpp as a docker container with docker-compose.
Link to the original project, [koboldcpp](https://github.com/LostRuins/koboldcpp)

Clone this, cd into it, make a directory named `models`, and put a koboldcpp compatible model in it.

Next, edit the `docker-compose.yml` file and change the file name in the `MODEL` variable to your model.

Build:
```
docker-compose -f docker-compose.yml build
```

Run:
```
docker-compose -f docker-compose.yml up -d
```


