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

cwd=$(dirname $0)

# Clone repository
tmpdir=$(mktemp -d -t huchim.XXXXXXXXXX)
url="https://github.com/huchim/app-template-$name.git"
git clone $url $tmpdir

# Export repository to output
cd $tmpdir
git archive master | tar -x -C $output

# Cleanup
cd $cwd
rm -rf $tmpdir

echo "$output"