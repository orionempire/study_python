
#### First time pre-steps
```text
(*) -> run first time only
/etc/hosts -> 127.0.0.1	db
add to pycharm run profile -> runserver 0.0.0.0:8001
bash_profile -> alias d-c="docker-compose" alias d-r="docker-compose run web"
```

#### Setup Environment (*)
```bash
deactivate
rmvirtualenv study_python_3_7
mkvirtualenv --python=$(which python3) study_python_3_7
sudo easy_install pip
pip install --upgrade pip
pip install -r docker/requirements.txt
```

#### Roll out
```bash
d-c up -d --build
docker ps
curl http://0.0.0.0:8000/
```

#### Clean Up
```bash
d-c stop web
```

#### Tear Down
```bash
# To Preserve pip install
pip freeze > requirements.txt
```

#### Diagnose
```bash
d-r bash
```