```
java -jar ~/Downloads/paper-1.20.4-496.jar --initSettings

oc create configmap papermc-configurations --from-file config/paper-global.yml --from-file config/paper-world-defaults.yml --from-file banned-players.json --from-file bukkit.yml --from-file commands.yml --from-file help.yml --from-file permissions.yml --from-file server.properties --from-file spigot.yml --from-file whitelist.json
```
