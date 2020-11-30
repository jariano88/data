for a in `docker ps -a --format "table {{.Names}}" | grep -v NAMES`
do
net=`docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $a`
vol=`docker inspect -f '{{ range .Mounts }}{{ printf "\n\t" }}{{ .Type }} {{ if eq .Type "bind" }}{{ .Source }}{{ end }}{{ .Name }} => {{ .Destination }}{{ end }}{{ printf "\n -------------------------------------------------------------------------" }}' $a`                                                                                                            echo -e "$a \n IP : $net $vol"                                                                                            done                                                                                                                      
echo -e "#Para subir todos los contenedores ejecutar :
docker ps -a | awk '{print $1}' | grep -v CONTAINER | xargs docker start"   
