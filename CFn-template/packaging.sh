#!/bin/sh
# ######################################################### #
# Create a nested stack template.                           #
# ./packaging.sh template bucketname profile responsefile   #
# - template: The path of the parent template to use.       #
# - bucketname: Upload destination S3 bucket.               #
# - *profile: AWS profile to use. Default is "default".     #
# - *responsefile: The name of the packaged YAML file.      #
#                 Default is "response.yaml".               #
# * is not required argument.                               #
# ######################################################### #

template=$1
bucketname=$2
if [ $# = 3 ]; then
  profile="--profile ${3}"
  responsefile="response.yaml"
elif [ $# = 4 ]; then
  responsefile=$4
else
  responsefile=response.yaml
  profile=""
fi

aws cloudformation package --template-file $template --s3-bucket $bucketname --output-template-file $responsefile $profile