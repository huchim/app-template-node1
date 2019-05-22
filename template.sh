# Creates temporary folder for shell run.
mkdir -p ./tmp

name=$1
output_user=$2

if [ -z "$output_user" ]
then
    echo "Se usará la raíz del proyecto."
    output_user=$(dirname $0)
fi

if [ -z "$name" ]
then
      exit -1
fi

output=$(realpath $output_user)
cwd=$(dirname $0)

echo "Generating files to ${output}"

# Clone repository
tmpdir=$(mktemp -d -t huchim.XXXXXXXXXX)
url="https://github.com/huchim/app-template-$name.git"
git clone $url $tmpdir

# Export repository to output
cd $tmpdir

git archive master | tar -x -C $output

# git archive master --format=tar.gz -o $archive
# echo "tar xvzf ${archive} -C $output"
#tar xvzf $archive -C $output

# Cleanup
rm -rf $tmpdir
cd $output

# Run custom script.
sh $output/configurations/templates/${name}.sh $cwd

echo "$output"