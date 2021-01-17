# How to start as Docker image #

<details>
  <summary>Open guide</summary>

Download latest from Docker Hub:
```
docker pull kanlas/mb-wfas-dynamicsquads
```

Or build by yourself:
```
wget https://raw.githubusercontent.com/kanlas-net/MB_WFAS_DynamicSquads/master/Docker/Dockerfile
docker build --tag dynamicsquads .
```

To start:
```
chown 5885:5885 /path/to/logs/folder; chmod 770 /path/to/logs/folder
docker run -itd \
--restart=always \
-v /path/to/config/name.txt:/opt/wfas/config.txt \
-v /path/to/logs/folder:/opt/wfas/Logs \
--name dynamicsquads \
-p 7240:7240 -p 7240:7240/udp \
dynamicsquads
```
`chown 5885:5885 /path/to/logs/folder; chmod 770 /path/to/logs/folder` and `/path/to/logs/folder:/opt/wfas/Logs` are optional. If they are not specified logs and banlist will be written inside the container.
<!-- Change environment variable *PORT* by adding `-e PORT=your_port` to container. Basically you don't need to change a container port, so if you want to use another one just change host port in mapping argument and use default port in game config. *PORT* variable is needed for healthcheck to work properly. -->

</details>

# How to start as Wine application #

<details>
  <summary>Open guide</summary>
<br/>
:warning: This method requires installed Wine for x86 package

## Download and unpack ##

Download latest release [here](https://github.com/kanlas-net/MB_WFAS_DynamicSquads/releases/latest/download/DynamicSquads.zip)

Replace files in the folder *Path_to_Dedicated_Server\Modules\Ogniem i Mieczem* with ones from the archive

## Or build with Linux from source ##

Run `build_module.sh`, it will create file *.env* where you should set path to your python2 binary

Then build project at any time by running `build_module.sh`

## Systemd setup ##

You can start a server as daemon, follow [instructions](https://github.com/kanlas-net/MB_Systemd).

</details>

# More info #
For more info check original mod [readme](https://github.com/Daimyo21/Mount-Blade-WFAS-Dynamic-Squads-CaptainCoop-Server-Side-Mod/blob/master/Readme.txt)
