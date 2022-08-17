#!/bin/bash

echo
echo "Executando: gsutil ls gs://itlc-backups-db-latest"
echo
gsutil ls gs://itlc-backups-db-latest

echo
echo "Exemplos:"
echo "   Listar conteúdo do diretório:"
echo "      gsutil ls gs://itlc-backups-db-latest/nome_diretorio/nome_subdiretorio"
echo
echo "   Copiar arquivo:"
echo "      gsutil cp gs://itlc-backups-db-latest/pasta/nomearquivo.tgz /destino"
echo
echo "   Copiar pasta:"
echo "      gsutil cp -r gs://itlc-backups-db-latest/pasta/ /destino"
echo
echo "Não copie o que não for preciso, pois cada byte trafegado gera custos."
echo
