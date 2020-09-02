FROM i386/alpine

MAINTAINER Kanlas <https://github.com/kanlas-net>

# Install main game
RUN apk update && \
    apk add --no-cache wget unzip wine freetype ncurses && \
    wget http://download.taleworlds.com/mb_wfas_dedicated_1143.zip && \
    unzip mb_wfas_dedicated_1143.zip && \
    mkdir /opt/wfas && \
    mv ./Mount\&Blade\ With\ Fire\ and\ Sword\ Dedicated/* /opt/wfas && \
    rm -rf ./Mount\&Blade\ With\ Fire\ and\ Sword\ Dedicated; rm -f mb_wfas_dedicated_1143.zip && \
    addgroup --gid 5885 -S mbserver && adduser --uid 5885 -S mbserver -G mbserver && \
    mkdir /opt/wfas/Logs && \
    chown mbserver:mbserver /opt/wfas/Logs && \
    rm /opt/wfas/Sample_*

# Install DynamicSquads
RUN wget https://github.com/kanlas-net/MB_WFAS_DynamicSquads/releases/latest/download/DynamicSquads.zip && \
    unzip -o DynamicSquads.zip -d /opt/wfas/Modules/Ogniem\ i\ Mieczem && \
    rm DynamicSquads.zip && \
    wget https://github.com/kanlas-net/MB_WFAS_DynamicSquads/raw/master/Server\ Related\ Files\ and\ Maps/WFAS\ Custom\ Maps.zip && \
    unzip -o WFAS\ Custom\ Maps.zip -d /opt/wfas/Modules/Ogniem\ i\ Mieczem/SceneObj && \
    rm WFAS\ Custom\ Maps.zip

ENV TERM=xterm \
    WINEDEBUG=-all \
    DISPLAY=:0 \
    PORT=7240

ENTRYPOINT wineconsole --backend=curses /opt/wfas/mb_wfas_dedicated.exe -r config.txt -m Ogniem i Mieczem

USER mbserver
