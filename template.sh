# Creates temporary folder for shell run.
mkdir -p ./tmp

name=$1
output=$2

if [ -z "$output" ]
then
      output=$(dirname $0)
fi

if [ -z "$name" ]
then
      exit -1
fi

url="https://github.com/huchim/app-template-$name.git"
tmpdir=$(mktemp -d -t huchim.XXXXXXXXXX)

git clone $url $tmpdir
cp -fr tmpdir output

echo "$output"