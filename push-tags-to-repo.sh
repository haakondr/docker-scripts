if [ -z "$1" ];
    then
       echo "missing first argument. Usage:"
       echo "./push-tags-to-repo.sh <hostname>"
       exit
    fi

for image_name in $(docker images | awk {'print $1'}); do
    if [ $image_name != "REPOSITORY" ] && [ $image_name != "<none>" ] ;
        then
            echo "Tagging image $image_name as $1/$image_name"
            docker tag $image_name $1/$image_name

            echo "pushing image $image_name to host $1"
            docker push $1/$image_name
        fi
done 

echo "Done."
