# data
echo "alias ayuda=/var/datatools/ayuda" >> /root/.bashrc  ;
cp ayuda /var/datatools/ ;
cp contenedores.sh /var/datatools/ ;
chmod +x  /var/datatools/*;
touch /var/datatools/ayuda_despliegues;
