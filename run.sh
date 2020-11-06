if [ -z "$TOKEN" ] 
then
    echo 'Please pass the Environment Variable $TOKEN to the docker container while running.'
else
    echo 'Running inlets'
    /bin/inlets server --port=8080 --token=$TOKEN
fi
