## Links Of The Day (LOTD)

Es un repositorio donde almaceno día a día las noticia que considero relevantes sobre tecnología en general.

La forma de llevar esto es que a través del script [createTodayFile](https://github.com/Elyager/lotd/blob/master/scripts/createTodayFile.sh) (que corre como tarea una vez por día en un cronjob) se crea un archivo con la fecha de ese día en formato `lotd_yyyymmdd` en el que almaceno todos los links que voy recopilando a veces con un breve comentario. 

Cada hora se corre el script [pushToGitHub](https://github.com/Elyager/lotd/blob/master/scripts/pushToGitHub.sh) así que este repositorio se mantiene siempre actualizado. 😎
